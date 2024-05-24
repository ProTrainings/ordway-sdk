module Ordway
  class Response
    include ActiveModel::Model

    attr_reader :data

    def initialize(success, data = nil)
      @success = success
      @data = data
    end

    def success?
      @success
    end
  end
end

