class ApplicationController < ActionController::Base  
  protect_from_forgery  
  helper_method :current_user  
    
  private  
  def current_user
    parse_user = User.find(session[:user_id]) if session[:user_id]
    @current_user ||= if parse_user
                        LocalUser.find_by_username(parse_user.username)
                      else
                        nil
                      end
  end
end  
