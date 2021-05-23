class Review < ApplicationRecord
  belongs_to :hotel
  belongs_to :traveler
end
