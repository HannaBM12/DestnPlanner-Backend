class ReservationSerializer < ActiveModel::Serializer
    attributes :id, :check_in, :check_out, :no_of_night, :no_of_room, :cancelation_policy, :traveler_name, :hotel_address, :hotel_name, :image, :total

    def hotel_name
      self.object.hotel.name
    end

    def hotel_address
      self.object.hotel.address
    end
  
    def traveler_name
      self.object.traveler.name
    end
  
    def image
      self.object.hotel.image
    end

end


