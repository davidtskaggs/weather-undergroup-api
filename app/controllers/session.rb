get "/session/new" do
  erb :"session/new"
end

post '/session' do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @error = "Invalid login, try again"
    erb :'/session/new'
  end
end


get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
