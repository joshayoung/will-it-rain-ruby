require 'simplecov'
SimpleCov.start

require 'webmock/rspec'
require 'dotenv/load'
require "faraday"
require "faraday_middleware"
require "pry"
require "pry-remote"
require "pry-nav"

require "support/api_data"
require "support/stubs"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end