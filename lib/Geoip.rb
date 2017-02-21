require 'httparty'
require "Geoip/response"
require "Geoip/version"

module Geoip
  # Your code goes here...

  def self.get(remote)
    Obj.new(remote, Response.new)
  end

  class Obj
    attr_accessor :url, :response
    attr_reader :hash

    def initialize(domain, response)
      @domain = domain
      @response = response
      build
    end

    def build
      httpresp = HTTParty.get("http://www.freegeoip.net/json/#{@domain}")
      hash = httpresp.parsed_response
      @response.set(hash)
      @response
    end

  end

end
