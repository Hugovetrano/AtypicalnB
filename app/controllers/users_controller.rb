class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def toggleOwnerMode
    if current_user.owner_mode == true
      current_user.owner_mode = false
    else
      current_user.owner_mode = true
    end
    current_user.save
  end
end
