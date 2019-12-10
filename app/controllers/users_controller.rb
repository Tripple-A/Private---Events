# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @current_user = current_user
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
    @invitations = @user.invitations
    @events = @user.created_events
    @invites = @user.attended_events
    @current_user = current_user
    @upcoming_events = @user.upcoming_events
    @previous_events = @user.previous_events
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end
end
