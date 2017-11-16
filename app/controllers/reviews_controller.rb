class ReviewsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  	@user = User.find(params[:user_id])
    @review.user_id = @user.id
    if @review.save
      redirect_to user_path(@user)
    else
      render "new"
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
    params.require(:review).permit(:testimonial, :rating)
  end
end
