class Tour < ApplicationRecord

    has_many :tour_reservations
    has_many :travelers, through: :tour_reservations
end
