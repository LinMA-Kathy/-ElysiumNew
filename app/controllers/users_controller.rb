class UsersController < ApplicationController
  def user_params
  params.require(:user).permit(:first_name, :last_name, :photo, :height, :chest, :waist, :hip)
  end

  def update
  @user = User.find(params[:id])
  @user.update(user_params)
  redirect_to dashboard_path(@dashboard)
  end

  def edit
    @user = User.find(params[:id])
  end
end
