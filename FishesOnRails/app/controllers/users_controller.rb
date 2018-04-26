class UsersController < ApplicationController
  def login
  	@user = User.new
  end
  
 def new

    @user = User.new(username: params["username"] ,bio: params["bio"])
    if @user.save
    	redirect_to user_path(@user.username)  
    else
    	render 'login'
    end
 end
  
  def profil
  
  @user = User.find_by_username(params[:username])
  end 


end
