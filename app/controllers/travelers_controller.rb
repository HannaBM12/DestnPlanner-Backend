class TravelersController < ApplicationController
    before_action :authenticate, only: [:me, :update]

    def index
        travelers = Traveler.all
        render json: travelers, except:[:created_at, :updated_at]
    end


    def show
        traveler = Traveler.find_by(id: params[:id])
        render json: traveler, except:[:created_at, :updated_at]
    end

    # Auth

    def login
        traveler = Traveler.find_by(email: params[:email])
        if traveler && traveler.authenticate(params[:password])
            token = JWT.encode({traveler_id: traveler.id}, 'my_secret', 'HS256')
            render json: { traveler: TravelerSerializer.new(traveler), token: token }
        else
            render json: { errors: ["Invalid email or password"] }, status: :unauthorized
        end
    end
    
    def signup
        traveler = Traveler.create(traveler_params)
        if traveler.valid?
            token = JWT.encode({traveler_id: traveler.id}, 'my_secret', 'HS256')
            render json: { traveler: TravelerSerializer.new(traveler), token: token }, status: :created
        else
            render json: { errors: traveler.errors.full_messages }, status: :unprocessable_entity
        end

    end

    def me
        render json: @current_traveler
    end

    def update
        @current_traveler.update(email: params[:email], age: params[:age])
        render json: @current_traveler
    end

    private
    
    def traveler_params
        params.permit(:name, :email, :password, :age)
    end

        

end
