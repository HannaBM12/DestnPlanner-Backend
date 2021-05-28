class TourSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :price, :location, :video
end
