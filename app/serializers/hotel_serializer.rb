class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :location, :propid, :price, :rating, :address, :neighbourhood, :distance, :avg_score, :reviews

  has_many :reviews
end
