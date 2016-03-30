# ENV["RAILS_ENV"] = "test"
# require File.expand_path("../../config/environment", __FILE__)
# require "rails/test_help"
# require "minitest/rails"

# # To add Capybara feature tests add `gem "minitest-rails-capybara"`
# # to the test group in the Gemfile and uncomment the following:
# # require "minitest/rails/capybara"

# # Uncomment for awesome colorful output
# # require "minitest/pride"

# class ActiveSupport::TestCase
#   # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
#   fixtures :all
#   # Add more helper methods to be used by all tests here...
# end
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
gem 'mocha'
require 'minitest/unit'
require 'minitest/spec'
require 'mocha/mini_test'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # extend Minitest::Spec::DSL

  # Add more helper methods to be used by all tests here...

end
