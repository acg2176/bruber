class Driver < ApplicationRecord
    has_many :shifts
    has_many :buses, through: :shifts
    has_many :bus_trips, through: :shifts
end
