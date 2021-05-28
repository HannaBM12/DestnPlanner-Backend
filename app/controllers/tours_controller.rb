class ToursController < ApplicationController

    def index
        tours = Tour.all
        render json: tours, except:[:created_at, :updated_at]
    end

    def show
        tour = Tour.find_by(id: params[:id])
        render json: tour, except:[:created_at, :updated_at]
    end
end
