class UsersController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path, notice: "Welcome to Speedy Auction!"
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update_attributes!(user_params)
    redirect_to users_path, notice: "Successfully updated your profile!"
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
