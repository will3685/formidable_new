class ReviewsController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :find_salon, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to  salon_path(@salon.id), notice: "Your review was added sucessfully."
    else
      redirect_to new_salon_review_path(@salon.id), notice: "Something goes wrong. Try again."
    end
  end

  private

  def find_salon
    @salon = Salon.find_by(id: params[:salon_id])
  end

  def review_params
    params.require(:review).permit(:body, :score, :salon_id, :user_id)
  end
end
