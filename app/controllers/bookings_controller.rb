class BookingsController < ApplicationController
  has_many_attached :photos

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.property_id = params[:property_id]
    if @booking.save
      flash[:notice] = "Booking created successfully."
      redirect_to bookings_path
    else
      flash[:alert] = "Failed to create booking."
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :property_id, :photos [])
  end
end
