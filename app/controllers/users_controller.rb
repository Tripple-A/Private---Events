class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to users_show_url
    else
      #flash.now[failure] = 'Unsuccessful Signup'
      render 'new'
  end
end

  def show
  end

  private

  def user_params 
    params.require(:user).permit(:name , :email , :password_digest)
  end
end
