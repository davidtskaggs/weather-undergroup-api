require 'open-uri'
require 'json'

open('http://api.wunderground.com/api/8bf8fd66e6b5dd04/geolookup/conditions/q/NY/New_York_City.json') do |f|
  json_string = f.read
  parsed_json = JSON.parse(json_string)
  parsed_json
  location = parsed_json['location']['city']
  temp_f = parsed_json['current_observation']['temp_f']
  print "Current temperature in #{location} is: #{temp_f}\n"
end

# ########################################################

# w_api = Wunderground.new("8bf8fd66e6b5dd04")

# ########################################################


