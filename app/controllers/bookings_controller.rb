class BookingsController < ApplicationController
#/bookings
#/cleaners/1/bookings

def index
  @bookings = Booking.all

end
def show
  @booking = Booking.find(params[:id])
end

def new
  @user = User.find(params[:user_id])
  @booking = Booking.new
end

def create
  @booking = Booking.new(date: booking_params[:date])
  @booking.customer = current_user
  @booking.cleaner = User.find(params[:user_id])
  if @booking.save
    redirect_to :root
  else
    redirect_back(fallback_location: fallback_location)
  end
end

def update
  @booking = Booking.find(params[:id])
  if params[:status] == 'accepted'
    @booking.status = params[:status]
    @booking.save
  elsif params[:status] == 'declined'
    @booking.status = params[:status]
    @booking.save
  else params[:status] == 'pending'
  end
end

private

def booking_params
 params.require(:booking).permit(:date)
end
end
