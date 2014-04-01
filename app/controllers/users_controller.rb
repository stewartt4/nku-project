class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    #@user = current_user
  end

  def update
    #current_user.update_attributes!(user_params)
    #redirect_to users_path, notice: "Successfully updated your profile!"
  end

  def destroy
    
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
