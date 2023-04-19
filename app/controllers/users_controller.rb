class UsersController < ApplicationController
  def user_params
  params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
