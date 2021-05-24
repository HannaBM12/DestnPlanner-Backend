class Traveler < ApplicationRecord

    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }


    has_many :reservations
    has_many :hotels, through: :reservations
    has_many :reviews
end
