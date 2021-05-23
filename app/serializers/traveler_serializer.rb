class TravelerSerializer < ActiveModel::Serializer
    attributes :id, :name, :email, :age, :reservations

    has_many :reservations
  
    

end

