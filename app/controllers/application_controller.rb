class ApplicationController < ActionController::Base  
  protect_from_forgery  
  helper_method :current_user, :current_parse_user
    
  private

  def current_parse_user
    @current_parse_user ||= (session[:user_id] ? User.find(session[:user_id]) : nil)
  end
  
  def current_user
    @current_user ||= if current_parse_user
                        LocalUser.find_by_objectId(current_parse_user.objectId)
                      else
                        nil
                      end
  end
end  
