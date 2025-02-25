# frozen_string_literal: true

class Api::V1::Auth::PasswordsController < ApiController
  skip_before_action :authenticate_user!

  def create
    user = User.find_by!(email: params[:email])

    user.generate_reset_password_token
    UserMailer.password_reset(user).deliver_later
    render json: {
      status: :ok,
      message: I18n.t('auth.passwords.reset_password_email_sent')
    }, status: :ok
  end

  def update
    user = User.find_by!(reset_password_token: params[:token])
    user.validate_reset_password_token
    raise ActiveRecord::RecordInvalid.new(user) unless user.errors.empty?
    return unless user.update!(password: params[:password], password_confirmation: params[:password_confirmation])

    render json: {
      status: :ok,
      message: I18n.t('auth.passwords.password_changed_successfully')
    }, status: :ok
  end
end
