require "ordway"
require "debug"
require "rspec"
require "json"
require "vcr"

RSpec.configure do |config|
  # config.expect_with :rspec do |expectations|
  #   expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  # end
  VCR.configure do |config|
    config.ignore_localhost = true
    config.allow_http_connections_when_no_cassette = true
    config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
    config.hook_into :webmock
  end

  #
  # # rspec-mocks config goes here. You can use an alternate test double
  # # library (such as bogus or mocha) by changing the `mock_with` option here.
  # config.mock_with :rspec do |mocks|
  #   # Prevents you from mocking or stubbing a method that does not exist on
  #   # a real object. This is generally recommended, and will default to
  #   # `true` in RSpec 4.
  #   mocks.verify_partial_doubles = true
  # end
end
