class TourReservationsController < ApplicationController

    def index
        tours = TourReservation.all
        render json: tours, except:[:created_at, :updated_at]
    end

    def show
        tour = TourReservation.all
        render json: tour, except:[:created_at, :updated_at]
    end


    def create
        tour = TourReservation.create!(tour_params)
        render json: tour, except:[:created_at, :updated_at]
    end

    def destroy
        tour = TourReservation.find_by(id: params[:id])
        tour.destroy!
        render json: {}
    end

    private

    def tour_params
        params.permit(:date, :quantity, :traveler_id, :tour_id, :tour_total)
    end


end
