class Availability < ApplicationRecord
  belongs_to :court
  belongs_to :price
  has_many :bookings
end
