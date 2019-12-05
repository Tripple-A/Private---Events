class UsersController < ApplicationController
  
  def index 
  
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to signin_path
    else
      render 'new'
  end
end

  def show
    @user = User.find(params[:id])
    @events = @user.created_events
    
  end

  private

  def user_params 
    params.require(:user).permit(:name , :email , :password_digest)
  end
end
