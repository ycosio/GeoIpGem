#!/usr/bin/env ruby

require_relative "geoip"

if ARGV[0] == "get"
  geo= GeoIp.new(ARGV[1], Response)
  geo.get
  geo
else
  "unrecognized option!!!"
end
