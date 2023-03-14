# frozen_string_literal: true

source 'https://rubygems.org'

group :development do
  gem 'capistrano', '~> 3.16'
  gem 'capistrano-pm2'
  gem 'capistrano-yarn'
  gem 'capistrano-rvm',   '~> 0.1.2', require: false
  gem 'capistrano-rails',   '~> 1.6.1', require: false
  gem 'capistrano-bundler', '~> 2.0.1', require: false
  gem 'capistrano-passenger'
  gem 'capistrano-service' # Used for restarting sidekiq service in place of capistrano-sidekiq.
  gem 'ed25519'
  gem 'bcrypt_pbkdf'
  gem 'net-ssh', '7.0.0.beta1' # openssl 3.0 compatibility @see https://stackoverflow.com/q/72068406/1090438
end
