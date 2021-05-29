class TourSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :timage, :tprice, :location, :video
end
