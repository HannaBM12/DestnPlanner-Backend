class TourReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :quantity, :total, :image, :tour_name

  has_one :traveler
  has_one :tour

  def image
    self.object.tour.image
  end

  def tour_name
    self.object.tour.name
  end

end
