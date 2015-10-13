get "/" do
  @user = User.new
  erb :index
end

