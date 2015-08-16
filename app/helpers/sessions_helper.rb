module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end
  def logged_in?
    !current_user.nil?
  end
  def current_user
    @current_user ||= Staff.find_by(id: session[:user_id])
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  def staff_name
    if logged_in?
      return @current_user.name
    end
  end
end
