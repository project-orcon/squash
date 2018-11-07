class Club < ApplicationRecord
  belongs_to :owner
  has_one :address
  has_many :bookings
  has_many :courts, dependent: :restrict_with_exception
  validates :name, presence: true
  validates :description, presence: true

end
