source 'https://rubygems.org'

gem 'jquery-rails'
gem 'mysql2'
gem 'pg'
gem 'sqlite3', group: :development
gem 'rails', '~> 3.2.11'
gem 'simple_form'
gem 'yard'
gem 'active_model_serializers', '~> 0.7.0'

# Devise for authentication
gem 'devise'

gem 'rails_12factor', group: :production

gem 'mercury-rails'

group :assets do
  gem 'coffee-rails'
  gem 'sass-rails'
  gem 'sass', '3.2.10'
  gem 'uglifier'
  gem 'bootstrap-sass', '~> 3.0.2.0'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'jazz_hands', '0.5.1'
  gem 'meta_request'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'spring', '0.0.11'
  gem 'guard', '~>1.0'
  gem 'guard-rspec', '~>3.0'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end
ruby '2.0.0'