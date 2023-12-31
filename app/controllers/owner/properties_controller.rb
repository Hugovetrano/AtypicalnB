class Owner::PropertiesController < ApplicationController
  before_action :check_owner_mode
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  def index
    @properties = Property.where(user_id: current_user.id)
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to owner_properties_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:name, :address, :city, :zipcode, :overview, :rating, :price_per_night, :guest_capacity, :photos)
  end

  def check_owner_mode
    unless current_user.owner_mode
      redirect_to properties_path
    end
  end
end
