class Court < ApplicationRecord
    belongs_to :club
    has_many :bookings
    has_many :availabilities

    validates :name, presence: true
    validates :description, presence: true
end
