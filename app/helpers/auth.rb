helpers  do

  def current_user_name
    user = User.find(session[:user_id])
    user.username
  end

  def logged_in?
    session[:user_id]
  end

  def log_out
    session[:user_id] = nil
  end

   def authenticate(user_id)
    session[:user_id] = user_id
    return
  end

end