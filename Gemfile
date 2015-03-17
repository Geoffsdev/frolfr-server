source 'https://rubygems.org'
ruby '2.1.3'

gem 'rails', '4.1.6'
gem 'unicorn'

# DBs
gem 'pg'

# Images
gem 'cloudinary'

# Pinging Heroku
gem 'newrelic_rpm'

# Authorization
gem 'bcrypt'

# Factories
gem 'factory_girl_rails'

# Validations
gem 'auto_strip_attributes'

# Serializers
gem 'active_model_serializers'

# Coverage
gem 'coveralls', require: false
gem 'simplecov', '~> 0.7.1'

gem 'kaminari'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'pry'
  gem 'pry-rails'
  gem 'database_cleaner'
  gem 'teaspoon'
end

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'turnip'
  gem 'rspec-pride'
  gem 'launchy'
end
