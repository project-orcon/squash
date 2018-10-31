class Club < ApplicationRecord
  belongs_to :owner
  has_one :address
  has_many :courts
end
