class Reservation < ApplicationRecord
  belongs_to :traveler
  belongs_to :hotel
end
