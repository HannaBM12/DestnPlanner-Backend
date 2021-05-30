class TourReservationSerializer < ActiveModel::Serializer
  attributes :id, :date, :quantity, :tour_total, :timage, :traveler_id, :tour_id



  def timage
    self.object.tour.timage
  end

  # def tour_name
  #   self.object.tour.name
  # end

end
