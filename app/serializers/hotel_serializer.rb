class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :location, :propid, :price, :rating, :address, :neighbourhood, :distance

  has_many :reviews
end
