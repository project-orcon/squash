class Owner < User
    has_many :clubs
    has_many :courts, through: :clubs
end