class ApplicationController < ActionController::API

    def authenticate
        auth_header = request.headers['Authorization']
        token = auth_header.split.last
       
        payload = JWT.decode(token, 'my_secret', true, { algorithm: 'HS256' })[0]
        @current_traveler = Traveler.find_by(id: payload['traveler_id'])

    rescue
        render json: { errors: ["Not Authorized"] }, status: :unauthorized
    
    end
    
end