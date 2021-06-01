class TourReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :quantity, :tour_total, :timage, :traveler_id, :tour_id, :location



  def timage
    self.object.tour.timage
  end

  def location
    self.object.tour.location
  end

end
