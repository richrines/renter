source 'https://rubygems.org'

ruby '2.0.0'

gem 'airbrake'
gem "active_model_serializers"
gem 'bourbon'
gem 'carrierwave'
gem 'clearance'
gem 'coffee-rails'
gem 'delayed_job_active_record', '>= 4.0.0'
gem 'email_validator'
gem 'flutie'
gem "fog", "~> 1.3.1"
gem 'high_voltage'
gem 'jquery-rails'
gem 'neat'
gem 'pg'
gem "rack-reverse-proxy", :require => "rack/reverse_proxy"
gem 'rack-timeout'
gem 'rails', '>= 4.0.0'
gem 'recipient_interceptor'
gem 'sass-rails'
gem 'simple_form'
gem 'uglifier'
gem 'unf'
gem 'unicorn'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 2.14'
  gem 'dotenv-rails'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'newrelic_rpm', '>= 3.6.7'
  gem 'rails_12factor'
end
