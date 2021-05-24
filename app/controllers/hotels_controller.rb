class HotelsController < ApplicationController

    # skip_before_action :authenticate, only: [:show, :index]

    def index
        hotels = Hotel.all
        render json: hotels, except:[:created_at, :updated_at]
    end

    def show
        hotel = Hotel.find_by(id: params[:id])
        render json: hotel, except:[:created_at, :updated_at]
    end

    def search
        byebug
    end


end
