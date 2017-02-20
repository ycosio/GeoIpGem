require 'httparty'
require_relative 'response'

class GeoIp

  attr_accessor :url
  attr_reader :json

  def initialize(domain)
    @url = domain
    get
  end

  def get
    response = HTTParty.get("http://www.freegeoip.net/json/#{@url}")
    @json = response.parsed_response
  end

  def to_obj
    res = Response.new(@json)
  end
end


