class Owner < User
    has_many :clubs
    has_many :courts, through: :clubs
    has_many :prices
end