class Bus < ApplicationRecord
  belongs_to :driver #current_driver
  has_many :shifts
  has_many :drivers, through: :shifts
  has_many :bus_trips, through: :shifts
end
