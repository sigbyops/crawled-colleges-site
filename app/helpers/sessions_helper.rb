module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    current_user = user
  end
  
  def sign_out
	current_user = nil
	cookies.delete(:remember_token)
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  # Set @current_user to user corresponding to remember token, but only if 
  # @current_user is undefined.
  def current_user
	# @current_user = @current_user || User.find...
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
end
