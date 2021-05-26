require 'uri'
require 'net/http'
require 'openssl'

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
        hotel_id = params[:propid]
        url = URI("https://hotels4.p.rapidapi.com/properties/get-details?id="+ hotel_id)

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = '3ad5c48d3dmshf704b5af68d53e9p1f565djsn4c80a4e80613'
        request["x-rapidapi-host"] = 'hotels4.p.rapidapi.com'
        
        response = http.request(request)
       
        data = response.read_body
        render json: data
        
    end


end
