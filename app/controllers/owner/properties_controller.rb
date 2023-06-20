class Owner::PropertiesController < ApplicationController
  before_action :check_owner_mode
  before_action :set_flat, only: [:show]
  def index
    @properties = Property.where(user_id: current_user.id)
  end

  def show
  end

  private

  def set_flat
    @property = Property.find(params[:id])
  end

  def check_owner_mode
    unless current_user.owner_mode
      redirect_to root_path
    end
  end
end
