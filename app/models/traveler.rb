class Traveler < ApplicationRecord
    has_many :reservations
    has_many :hotels, through: :reservations
    has_many :reviews
end
