class UsersController < ApplicationController
  def new  
    @user = User.new  
  end  
    
  def create  
    @user = User.new(params[:user])  
    if @user.save
      LocalUser.create! :username => @user.username, :created_at => @user.created_at
      redirect_to root_url, :notice => "Signed up!"  
    else  
      render "new"  
    end
  end
end
