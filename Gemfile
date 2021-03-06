source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'active_storage_validations', '0.8.2'
gem 'font-awesome-rails'
gem 'font_awesome5_rails'
gem 'open-iconic-rails'
gem 'sass-rails', '>= 6'
gem 'will_paginate', '~> 3.1.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'pg', '1.1.4'

# Use Active Storage variant
gem 'devise'
gem 'devise-bootstrap-views', '~> 1.0'
gem 'image_processing', '~> 1.2'
gem 'rubocop', '~>0.81.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'listen'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # The RSpec testing framework
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  # Capybara, the library that allows us to interact with the browser using Ruby
  gem 'capybara'
  # The following gems aids with the nuts and bolts
  # of interacting with the browser.
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'webdrivers'
end

group :test do
  gem 'launchy'
  gem 'shoulda-matchers', '~>3.1'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'bullet'
  gem 'rails-erd'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'aws-sdk-s3', '1.46.0', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
