source 'https://rubygems.org'

ruby '2.3.0'

gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.1.0'
gem 'delayed_job_active_record'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'normalize-rails', '~> 3.0.0'
gem 'newrelic_rpm'
gem 'pg'
gem 'puma'
gem 'rack-canonical-host'
gem 'rails', '~> 4.2.0'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'title'
gem 'uglifier'
gem 'therubyracer'
# user_choice
gem 'slim-rails'
gem 'responders'
gem 'devise'
gem 'devise-bootstrap-views'
gem 'twitter-bootstrap-rails'

group :development do
  gem 'guard-rubocop'
  gem 'html2slim'
  gem 'rubocop', require: false
  gem 'guard'
  gem 'guard-livereload', '~> 2.4', require: false
  gem 'guard-puma'
  gem 'guard-migrate'
  gem 'guard-rspec', require: false
  gem 'guard-bundler', require: false
  gem 'rb-inotify', github: 'kvokka/rb-inotify'
  gem 'quiet_assets'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console'
end

group :development, :test do
  gem 'awesome_print', require: 'ap'
  gem 'hirb'
  gem 'bullet'
  gem 'bundler-audit', require: false
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-rescue'
  gem 'pry-state'
  #  gem 'better_errors'
  gem 'rspec-rails', '~> 3.4.0'
  gem 'fuubar'
end

group :test do
  gem 'capybara-webkit'
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'rack-timeout'
  gem 'rails_12factor'
end
