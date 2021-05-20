class TravelersController < ApplicationController
    
    def index
        travelers = Traveler.all
        render json: travelers, except:[:created_at, :updated_at]
    end


    def show
        traveler = Traveler.find_by(id: params[:id])
        render json: traveler, except:[:created_at, :updated_at]
    end

end
