class Traveler < ApplicationRecord

    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }


    has_many :reservations
    has_many :hotels, through: :reservations
    has_many :reviews
    has_many :tour_reservations
    has_many :tours, through: :tour_reservations
end
