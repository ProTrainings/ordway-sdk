module Ordway
  class Response
    attr_reader :data

    def initialize(success, data = nil)
      @success = success
      @data = data
    end

    def failure?
      !@success
    end

    def success?
      @success
    end
  end
end
