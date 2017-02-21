require 'httparty'
require_relative '../geoip/response'

class GeoIp

  def self.get(remote)
    new(remote,Response.new).get
  end

  attr_accessor :url, :response
  attr_reader :hash

  def initialize(domain, response)
    @domain = domain
    @hash = {}
    @response = response
  end

  def get
    response = HTTParty.get("http://www.freegeoip.net/json/#{@domain}")
    @hash = response.parsed_response
    @response.set(@hash)
    @response
  end

  def to_obj
    @response.set(@hash)
    @response
  end
end


