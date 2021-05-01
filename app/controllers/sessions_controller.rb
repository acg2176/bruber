class SessionsController < ApplicationController
    def home
    end

    def destroy
        # binding.pry
        session.delete(:user_id)
        redirect_to root_path
    end
end