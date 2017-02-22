require 'httparty'
require "geoip_ts/response"
require "geoip_ts/version"

module GeoipTs
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
