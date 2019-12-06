class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    log_in(user) if user
    
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "Successfully logged out!"
		redirect_to root_url
  end

  
end
