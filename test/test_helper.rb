# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"

require 'simplecov'

require_relative "../config/environment"
require "rails/test_help"
require 'minitest/reporters'
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  include ApplicationHelper
end
