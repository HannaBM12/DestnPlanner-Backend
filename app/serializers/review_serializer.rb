class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score

  has_one :hotel
  has_one :traveler
end
