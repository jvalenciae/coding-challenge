# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.6'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

gem 'pg', '~> 1.5.3'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

gem 'rails-healthcheck', '~> 1.4.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

gem 'silencer', require: false

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem 'sassc-rails'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

gem 'sentry-rails'
gem 'sentry-ruby'
gem 'sentry-sidekiq'

# List of Countries and Cities
gem 'city-state'

# Serializer
gem 'active_model_serializers', '~> 0.10.0'

# Authentication
gem 'devise'
gem 'devise-i18n'
gem 'devise-jwt'
gem 'jsonapi-serializer'
gem 'rack-cors'

gem 'newrelic_rpm'
# Permissions
gem 'cancancan'

# Endpoints Documentation
gem 'rswag-api'
gem 'rswag-ui'

# Database Search
gem 'pg_search'

# Background Jobs
gem 'sidekiq', '~> 6.5'

# Mailer Service
gem 'sendgrid-ruby'

# Pagination
gem 'will_paginate', '~> 4.0'

# S3 Buckets
gem 'aws-sdk-s3'

# SoftDelete
gem 'paranoia'

# Multi-Language
gem 'rails-i18n', '~> 7.0.0'

group :development, :test do
  gem 'dotenv-rails', '~> 2.7.0'
  gem 'goldiloader'
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails', '~> 0.3.9'

  gem 'byebug'
  # indented print of Ruby and Rails Objs and Arrays by using `ap something
  gem 'awesome_print', '~> 1.9', '>= 1.9.2', require: 'ap'

  gem 'rspec', '~> 3.11'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  # Rspec DSL that generates Swagger files directly from your rspecs
  gem 'rswag-specs', '~> 2.5', '>= 2.5.1'

  gem 'rubocop', '~> 1.6', '>= 1.6.1', require: false
  gem 'rubocop-gitlab-security', '~> 0.1.1'
  gem 'rubocop-performance', '~> 1.14', '>= 1.14.3', require: false
  gem 'rubocop-rails', '~> 2.15', '>= 2.15.2', require: false
  gem 'rubocop-rspec', '~> 2.12', '>= 2.12.1', require: false

  gem 'sqlite3'
end

group :development, :test, :staging, :uat do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.0'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler'

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem 'spring'
  gem 'annotate', '~> 3.2'
  # Provides a better error page for Rails and other Rack apps
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  # bundler-audit provides patch-level verification for Bundled apps.
  gem 'bundler-audit', '~> 0.9.1'
  # Increase your application's performance by reducing the number of queries it makes.
  gem 'bullet', '~> 7.0', '>= 7.0.2'
  # Check various places in your code that could be faster.
  gem 'fasterer', '~> 0.10.0'
  # Tool that examines classes, modules and methods and reports any Code Smells it finds.
  gem 'reek', '~> 6.1', '>= 6.1.1'
  # Adds number of SQL queries that were done during processing request
  gem 'sql_queries_count', '~> 0.0.1'
end

group :test do
  # Simple testing of Sidekiq jobs via a collection of matchers and helpers
  gem 'rspec-sidekiq', '~> 3.1'
  # Fake (In-memory) driver for redis-rb
  # gem 'fakeredis', '~> 0.5.0'
  gem 'database_cleaner', '~> 1.7'
  gem 'fakeredis'
  gem 'shoulda-callback-matchers', '~> 1.1', '>= 1.1.4'
  gem 'shoulda-matchers', '~> 5.1'
  gem 'simplecov', '~> 0.21.2'
  gem 'timecop', '~> 0.9.5'
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'

  gem 'webmock'

  gem 'nokogiri'
end
