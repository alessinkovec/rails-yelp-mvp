class ReviewsController < ApplicationController
  def new
    @restaurant = set_review
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = set_review
    if @review.save
    @restaurant = set_review
    redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def set_review
    Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
