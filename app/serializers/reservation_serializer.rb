class ReservationSerializer < ActiveModel::Serializer
    attributes :id, :check_in, :check_out, :no_of_night, :no_of_room, :cancelation_policy, :image, :traveler_id, :hotel_id, :hotel_name, :total, :price

    def hotel_name
      self.object.hotel.name
    end
  
    def image
      self.object.hotel.image
    end

    def price
      self.object.hotel.price
    end
  
    

end


