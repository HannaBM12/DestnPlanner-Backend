class TravelerSerializer < ActiveModel::Serializer
    attributes :id, :name, :email, :age, :reservations, :tour_reservations

    has_many :reservations
    has_many :tour_reservations
    

    

end

