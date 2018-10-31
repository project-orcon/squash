class Booking < ApplicationRecord
    belongs_to :availability
    belongs_to :club
    belongs_to :court
    belongs_to :client
    has_many :payments
end
