class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.property_id = params[:property_id]
    if @booking.save
      redirect_to bookings_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :property_id)
  end
end
