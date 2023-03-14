class SessionsController < ApplicationController
    def new
        @user = User.new        
    end

    def create
        @user = User.find_by(email: user_params[:email])
        
        if @user && @user.password == user_params[:password]
            cookies[:user_id] = @user.id
            redirect_to success_path            
        else
            flash.now[:notice] = "AAG lg gyi"
            render :new
        end
    end
end
