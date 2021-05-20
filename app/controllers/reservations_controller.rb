class ReservationsController < ApplicationController

    def index
        reservations = Reservation.all
        render json: reservations, except:[:created_at, :updated_at]
    end


    def show
        reservation = Reservation.find_by(id: params[:id])
        render json: reservation, except:[:created_at, :updated_at]
    end
end
