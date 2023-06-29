class UsersController < ApplicationController
  def home
  end

  def show_profile
    @user = current_user
  end

  def show
    @user = current_user
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to users_show_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduce)
  end
end
