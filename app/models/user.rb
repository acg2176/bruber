class User < ApplicationRecord
    has_many :bus_trips
    has_many :shifts, through: :bus_trips
    has_secure_password #authenticate method
end
