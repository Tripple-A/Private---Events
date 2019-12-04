class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    log_in(user) if user
  end

  def destroy
  end

  
end
