require 'simplecov'

SimpleCov.at_exit do
  puts SimpleCov.result.format!
end

SimpleCov.start do
  add_group "app", "app"
  add_group "test", "test"
end

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
