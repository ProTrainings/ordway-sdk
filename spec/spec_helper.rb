require "ordway"
require "debug"
require "rspec"
require "json"
require "vcr"

RSpec.configure do |config|
  config.before(:each) do
    c = Ordway::Configuration.new
    c.scheme = "https"
    c.host = "sandbox.ordwaylabs.com"
    c.base_path = "/api/v1"
    @global_config = c
  end

  VCR.configure do |c|
    c.ignore_localhost = true
    c.allow_http_connections_when_no_cassette = true
    c.cassette_library_dir = "spec/fixtures/vcr_cassettes"
    c.hook_into :webmock
  end
end
