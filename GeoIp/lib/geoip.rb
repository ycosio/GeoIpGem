require 'httparty'
require_relative 'Response'

class GeoIp

  attr_accessor :url
  attr_reader :json

  def initialize(domain, response)
    @domain = domain
    @hash = {}
    @response = response
  end

  def get
    response = HTTParty.get("http://www.freegeoip.net/json/#{@domain}")
    @hash = response.parsed_response
  end

  def to_obj
    @response.set(@hash)
  end
end


