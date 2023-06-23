class PropertiesController < ApplicationController
  before_action :check_owner_mode, except: [:new, :create, :destroy]
  before_action :set_flat, only: [:show, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "properties.name @@ :query \
        OR properties.overview @@ :query \
        OR properties.city @@ :query \
        OR users.first_name @@ :query \
        OR users.last_name @@ :query"
      @properties = Property.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @properties = Property.all
    end

    @markers = @properties.geocoded.map do |property|
      {
        lat: property.latitude,
        lng: property.longitude,
        info_window_html: render_to_string(partial: "shared/info_window", locals: { property: property })
      }
    end
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
    if @property.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to owner_properties_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, status: :see_other
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
