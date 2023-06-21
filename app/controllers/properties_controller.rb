class PropertiesController < ApplicationController
  before_action :check_owner_mode
  before_action :set_flat, only: [:show, :update, :destroy]

  def index
    @properties = Property.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user_id = current_user.id
    @property.photos.attach(params[:property][:photos])
    if @property.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  private

  def set_flat
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:name, :address, :city, :zipcode, :overview, :rating, :price_per_night, :guest_capacity, photos: [])
  end

  def check_owner_mode
    if current_user.owner_mode
      redirect_to owner_properties_path
    end
  end
end
