require "ordway"
require "debug"
require "rspec"
require "json"
require "vcr"

RSpec.configure do |config|
  config.before(:each) do
    c = Ordway::Configuration.new
    c.scheme = "https"
    c.host = "test"
    c.base_path = "/api/v1"
    @global_config = c
  end

  VCR.configure do |config|
    config.ignore_localhost = true
    config.allow_http_connections_when_no_cassette = true
    config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
    config.hook_into :webmock
  end
end
