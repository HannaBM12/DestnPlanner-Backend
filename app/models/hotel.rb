class Hotel < ApplicationRecord
    has_many :reservations
    has_many :travelers, through: :reservations
end
