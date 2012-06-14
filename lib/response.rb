module SearchService
  class Response
    attr_accessor :status, :data
    
    def initialize(status, message_hash)
      @status = status
      @data = message_hash
    end
  end
end