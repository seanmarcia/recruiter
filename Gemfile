source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', github: "rails/rails"
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

# My gems
gem 'pg'           # datastore
gem 'unicorn'      # production server
gem 'responders'   # flash messages
gem 'high_voltage' # static pages

gem 'devise',  '~> 3.1.0' # authentication
gem 'rolify'              # authorization
gem 'authority'           #authorization

gem 'simple_form', '~> 3.0.0.rc'

gem 'interactor'
gem 'interactor-rails'

gem 'foreman'

# dev
group :development do
  gem 'passenger'
  gem 'dotenv'
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-unicorn', :require => false
  gem 'guard'
  gem 'guard-livereload'
  gem 'mailcatcher'   # swanky app for checking mail sent by your app in dev
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
