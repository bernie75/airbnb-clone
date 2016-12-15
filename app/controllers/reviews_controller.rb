class ReviewsController < ApplicationController
  before_action :find_flat, only: [ :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = @flat.reviews.build(review_params)
    @review.save
    redirect_to flat_path(@flat)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
  def find_flat
    @flat = Flat.find(params[:flat_id])
  end
end
