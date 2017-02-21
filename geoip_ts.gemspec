Gem::Specification.new do |s|
  s.name        = 'geoip_ts'
  s.version     = '0.0.1'
  s.date        = '2017-02-20'
  s.summary     = "Geo ip to JSON"
  s.description = "JSON from geoip"
  s.authors     = ["Yair Cosio", "Yuri Delgado"]
  s.email       = ['ycosio1310@gmail.com', 'yuri.delgado@tangosource.com']
  s.files       = ["lib/geo_ip.rb","geoip/response.rb"]
  s.homepage    = 'http://rubygems.org/gems/hola'
  s.license     = 'MIT'
  s.requirements= 'httparty, v0.13.6'
  s.bindir      = 'bin'
  s.executables = 'freegeoip'
end
