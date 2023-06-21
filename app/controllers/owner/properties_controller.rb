class Owner::PropertiesController < ApplicationController
  before_action :check_owner_mode
  before_action :set_property, only: [:show]
  def index
    @properties = Property.where(user_id: current_user.id)
  end

  def show
  end

  def update
    if @property.update(property_params)
      redirect_to property_path(@property)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @property.destroy
    redirect_to propertys_path, status: :see_other
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def check_owner_mode
    unless current_user.owner_mode
      redirect_to root_path
    end
  end
end
