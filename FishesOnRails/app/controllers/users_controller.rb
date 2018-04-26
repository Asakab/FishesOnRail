class UsersController < ApplicationController
  def login
  end
  
  def new
    @user = User.create(username: params["username"] ,bio: params["bio"])
    redirect_to user_path(@user.username)  
end
  
  def profil
  
  @user = User.find_by_username(params[:username])
  end 
end
