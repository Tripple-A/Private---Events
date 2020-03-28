# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def log_in(user)
    session[:user_id] = user.id
    @current_user = user
    redirect_to user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
