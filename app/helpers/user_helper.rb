def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  !!current_user
end

def fav_location?(loc)
  logged_in? && loc.user == current_user
end

def temp(city, state)
  open("http://api.wunderground.com/api/8bf8fd66e6b5dd04/geolookup/conditions/q/#{state}/#{city}.json") do |f|
    json_string = f.read
    parsed_json = JSON.parse(json_string)
    @location = parsed_json['location']['city']
    @temp_f = parsed_json['current_observation']['temp_f']
  end
end
