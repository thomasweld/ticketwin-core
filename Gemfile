source 'https://rubygems.org'
ruby '2.2.0'

gem 'rails', github: 'kyledcline/rails', branch: '4-2-stable'
gem 'rails-api'
gem 'pg'
gem 'responders', '~> 2.0'
gem 'active_model_serializers'

# Models
gem 'classy_enum', '4.0.0'

# Users
gem 'devise'
gem 'bcrypt', '3.1.9'
gem 'doorkeeper'
# gem 'oauth2', '1.0.0'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-linkedin'


# Assets
gem "paperclip", "~> 4.2"
gem 'aws-sdk', '< 2.0'

# Pending
# gem 'kaminari', '0.16.2'

# External APIs
gem 'stripe', '1.21.0'

group :development, :test do
  gem 'byebug', '3.5.1'
  gem 'rspec', '~> 3.3.0'
  gem 'rspec-rails', '~> 3.3', '>= 3.3.3'
  gem "factory_girl_rails", "~> 4.0"
  gem 'web-console', '2.0.0'
  gem 'figaro', '1.0.0'
  gem 'spring', '1.2.0'
  gem 'awesome_print'
  gem 'annotate'
  gem 'better_errors', '~> 2.1.1'
  gem 'database_cleaner'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end

group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end
