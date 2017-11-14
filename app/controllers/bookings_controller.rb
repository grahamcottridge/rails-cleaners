class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end
#/bookings
#/cleaners/1/bookings
  def create

    @booking = current_user.bookings.new(booking_params)
    @booking.customer_id = current_user.id
    @booking.cleaner_id = User.find(params[:cleaner_id])
    @booking.save
  end

  private

  def booking_params
     params.require(:booking).permit(:date)
  end
end
