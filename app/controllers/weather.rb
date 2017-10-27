get "/weather/search" do
  erb :"weather/search"
end

get "/weather/results" do
  city = params[:city].gsub(' ', '_')
  state = params[:state].gsub(' ', '_')

  open("http://api.wunderground.com/api/8bf8fd66e6b5dd04/geolookup/conditions/q/#{state}/#{city}.json") do |f|
    json_string = f.read
    parsed_json = JSON.parse(json_string)
    @location = parsed_json['location']['city']
    @temp_f = parsed_json['current_observation']['temp_f']

    print "Current temperature in #{@location} is: #{@temp_f}\n"
  end
  if request.xhr?
    erb :"weather/_results", layout: false
  else
  erb :"weather/results"
  end
end
