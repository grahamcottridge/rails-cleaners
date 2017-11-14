class ReviewsController < ApplicationController
  def new
  	@review = Review.new
  end

  def create
  	@booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/show'
    end
  end

  def show
  	@review = Review.find(params[:id])
  end

  def edit
  	@review = Review.find(params[:id])
  end

private

  def review_params
    params.require(:review).permit(:testimonial)
  end
end