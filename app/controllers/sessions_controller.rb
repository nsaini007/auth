class SessionsController < ApplicationController
    def new
        @user = User.new        
    end

    def create
        @user = User.find_by(email: user_params[:email])
    end
end
