require "ordway"
require "debug"
require "rspec"
require "json"

RSpec.configure do |config|
  config.before(:each) do
    c = Ordway::Configuration.new
    c.scheme = "https"
    c.host = "test"
    c.base_path = "/api/v1"
    @global_config = c
  end
end
