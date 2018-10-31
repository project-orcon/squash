class Court < ApplicationRecord
    belongs_to :club
    has_many :bookings
    has_many :availabilities
end
