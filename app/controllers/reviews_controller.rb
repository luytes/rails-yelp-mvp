class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    # we store the restaurant in the review. wtf, i mean review has only 2 parameters --> content and rating. why does it has restarants now?
    # @review.restaurant = @restaurant
    @review.restaurant_id = @restaurant.id
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to reviews_path(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end
end
