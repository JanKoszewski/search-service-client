require "faraday"
require "json"
require "ostruct"
require_relative 'response'

module SearchService
  class Client
    attr_accessor :conn
    attr_accessor :path_prefix

    def initialize(options={})
      options[:url] ||= "http://localhost:3000"
      @conn = Faraday.new(:url => options[:url])
    
      if options[:path_prefix]
        @path_prefix = options[:path_prefix]
      else
        @path_prefix = ""
      end

      if token = options[:token]
        @token = token
      end
      @options = options
    end

    def find_messages(query)

      resp = @conn.get do |req|
        req.url "#{@path_prefix}/api/v1/messages.json"
        req.params["token"] = @token
        req.params["query"] = query
        req.headers['Content-Type'] = 'application/json'
      end
      response = SearchService::Response.new(resp.status, OpenStruct.new(JSON.parse(resp.body)))
    end
  end
end
