class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @users = User.all
  end

  def create
    @review = Review.create! review_params
    redirect_to user_path(@review.reviewed_user)
  end

  private
  def review_params
    params.require(:review).permit(:reviewer_id, :reviewed_user_id, :review_text)
  end
end
