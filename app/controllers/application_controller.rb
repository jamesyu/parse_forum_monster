class ApplicationController < ActionController::Base  
  protect_from_forgery  
  helper_method :current_user, :current_parse_user
    
  private

  def current_parse_user
    if session[:user_id]
      @current_parse_user ||= User.find(session[:user_id])
    else
      @current_parse_user = nil
    end
  end
  
  def current_user
    @current_user ||= if current_parse_user
                        LocalUser.find_by_objectId(current_parse_user.objectId)
                      else
                        nil
                      end
  end
end  
