class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews, except:[:created_at, :updated_at]
    end

    def create
        review = Review.new(review_params)
        if review.save
            render json: review
        else
            render json: { error: review.errors.messages }, status: 422
        end
    end


    def destroy
        review = Review.find_by(params[:id])
        if review.destroy
            render json: {}
        else
            render json: { error: review.errors.messages }, status: 422
        end
    end

    private 

    def review_params
        params.permit(:title, :description, :score, :hotel_id, :traveler_id)
    end

end
