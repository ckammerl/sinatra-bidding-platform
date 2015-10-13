get "/register" do
  @user = User.new
end

post "/users" do
  @user = User.new(username: params[:username])
  @user.password = params[:password]
  if @user.save
    authenticate(@user.id)
    redirect "/"
  else
    erb :register
  end
end

get "/login" do
  @user = User.new
  erb :login
end

post "/login" do
  user = User.find_by(username: params[:username])

  if user.password == params[:password]
    authenticate(user.id)
    redirect "/"
  else
    redirect "/login"
  end
end

get "/logout" do
  log_out
  redirect "/"
end