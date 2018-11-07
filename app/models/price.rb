class Price < ApplicationRecord
    has_many :availabilities
    belongs_to :owner
end
