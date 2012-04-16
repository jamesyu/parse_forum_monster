class UsersController < ApplicationController
  def new  
    @user = User.new  
  end  
    
  def create
    parse_params = params[:user].clone
    parse_params.delete :password_confirmation
    @user = User.new(parse_params)
    if @user.save
      LocalUser.create! :username => @user.username, :created_at => @user.created_at
      redirect_to root_url, :notice => "Signed up!"  
    else  
      render "new"  
    end
  end
end
