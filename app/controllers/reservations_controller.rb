class ReservationsController < ApplicationController
    # before_action :authenticate, only: [:index, :show, :create, :update, :destroy]

    def index
        reservations = Reservation.all
        render json: reservations, except:[:created_at, :updated_at]
    end


    def show
        reservation = Reservation.find_by(id: params[:id])
        render json: reservation, except:[:created_at, :updated_at]
    end

    def create
        reservation = Reservation.create!(reservation_params)
        render json: reservation, except:[:created_at, :updated_at]

    end

    def update
        reservation = Reservation.find_by(id: params[:id])
        reservation.update!(update_params)
        render json: reservation

    end


    def destroy
        reservation = Reservation.find_by(id: params[:id])
        reservation.destroy!
        render json: {}
    end

    private
    
    def reservation_params
        params.require(:reservation).permit(:check_in, :check_out, :no_of_night, :no_of_room, :cancelation_policy, :traveler_id, :hotel_id, :total)
    end

    def update_params
        params.permit(:check_in, :check_out, :no_of_night, :no_of_room, :total)

    end
end


