# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks
task(:default).clear
task default: [:spec]

if defined? RSpec
  task(:spec).clear
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.verbose = false
  end
end

if ENV['RAILS_ENV'] == 'test' || ENV['RAILS_ENV'] == 'development'
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
end

require "dotenv-heroku/tasks" if ENV['RAILS_ENV'] == 'test' || ENV['RAILS_ENV'] == 'development'