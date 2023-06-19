class Owner::PropertiesController < ApplicationController
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
end
