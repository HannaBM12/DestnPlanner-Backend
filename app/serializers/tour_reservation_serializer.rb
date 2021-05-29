class TourReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :quantity, :tour_total, :timage
  has_one :traveler
  has_one :tour


  def timage
    self.object.tour.timage
  end

  # def tour_name
  #   self.object.tour.name
  # end

end
