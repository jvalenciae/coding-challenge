# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApiController
      before_action :set_user, only: %i[show update destroy]

      def index
        @users = User.accessible_by(current_ability)
        render_response(data: @users, serializer: Users::UserSerializer)
      end

      def show
        authorize!(:read, @user, message: I18n.t('unauthorized.read.user'))
        render_response(data: @user, serializer: Users::UserSerializer)
      end

      def create
        @user = User.new(user_params)
        authorize!(:create, @user, message: I18n.t('unauthorized.create.user'))
        render_response(data: @user, serializer: Users::UserSerializer) if @user.save!
      end

      def update
        @user.assign_attributes(user_params)
        authorize!(:update, @user, message: I18n.t('unauthorized.update.user'))
        render_response(data: @user, serializer: Users::UserSerializer) if @user.save!
      end

      def destroy
        authorize!(:destroy, @user, message: I18n.t('unauthorized.destroy.user'))
        render json: { message: 'User successfully deleted.' }, status: :ok if @user.destroy!
      end

      def members
        @users = User.accessible_by(current_ability).by_role('member').by_branch_ids(params[:branch_ids])
        @users = @users.search_by_q(params[:q]).with_pg_search_rank if params[:q].present?
        render_response(data: @users, serializer: Users::MemberSerializer)
      end

      def roles
        super_admin_roles = User::SUPER_ADMIN_ROLES.keys
        admin_roles = User::ADMIN_ROLES.keys
        member_roles = User::MEMBER_ROLES.keys
        @roles = {
          super_admin: super_admin_roles,
          admin: admin_roles,
          member: member_roles
        }
        render_response(data: @roles)
      end

      private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(
          :first_name, :last_name, :email, :password, :phone_number, :country, :role,
          { organization_ids: [] }, { branch_ids: [] }
        )
      end
    end
  end
end
