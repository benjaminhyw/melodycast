helpers do 
  def current_user
    @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
  end

  def login(user)
    session[:user_id] = user.id
  end
end
