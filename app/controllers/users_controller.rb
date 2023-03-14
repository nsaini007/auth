class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :success     
    else
      render :new
    end
  end

  def success
    render :success
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
