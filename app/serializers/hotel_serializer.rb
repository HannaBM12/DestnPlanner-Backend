class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :location, :propid, :price, :rating, :guest_rating, :guest_reviews, :address, :latitude, :longitude, :neighbourhood, :distance, :avg_score, :reviews

  has_many :reviews
end
