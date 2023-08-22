class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end

    def create
        review = Review.find_or_create_by(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: review
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :title, :body, :stars, :book_id)
    end
end
