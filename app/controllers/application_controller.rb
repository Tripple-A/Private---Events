class ApplicationController < ActionController::Base

    def log_in(user)
        session[:user_id] = user.id

        redirect_to user
       end
end
