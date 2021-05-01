class Shift < ApplicationRecord
  belongs_to :driver
  belongs_to :bus
  has_many :bus_trips
end
