source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'

# Use legacy sprockets
gem 'sass-rails', '>= 5'
gem 'sprockets', '~> 4'
gem 'sprockets-rails', :require => 'sprockets/railtie'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Use devise for authentication
gem 'devise'

# Use HAML over ERB
gem "haml-rails", "~> 2.0"

# Use CSV Gem
gem 'to_csv-rails'# Last officially released gem

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Bootstrap to theme devise.
gem 'devise-bootstrap-views', '~> 1.0'

# Include Font-Awesome for icons.
gem "font-awesome-rails"

gem 'jquery-rails'

# Use Mailgun API to send mail.
gem 'mailgun_rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # For Testing
  gem "rspec-rails", group: [:development, :test]
  gem 'shoulda-matchers', '~> 4.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

