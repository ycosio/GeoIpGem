module GeoIp
  class Response

    attr_accessor :ip,:country_code, :country_name,
    :region_code, :region_name, :city,
    :zip_code, :time_zone, :latitude,
    :longitude, :metro_code

    def set(hash)
      @ip = hash[:ip]
      @country_code = hash["country_code"]
      @country_name = hash["country_name"]
      @region_code  = hash["region_code"]
      @region_name = hash["region_name"]
      @city  = hash["city"]
      @zip_code  = hash["zip_code"]
      @time_zone  = hash["time_zone"]
      @latitude  = hash["latitude"]
      @longitude  = hash["longitude"]
      @metro_code  = hash["metro_code"]
    end

  end
end
