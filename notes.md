Bus App

Bus
- belongs_to :driver
- has_many :shifts
- has_many :drivers, through :shifts
- has_many :cab_rides, through shifts
- bus_model
- license_plate

Driver
- has_many :shifts
- has_many :buses, through :shifts
- has_many :bus_trips, through :shifts
- first_name
- last_name
- drivers_license_number
- expiry_date

Shift
- belongs_to :driver
- belongs_to :bus
- has_many :bus_trips
- shift_start_time
- shift_end_time
- login_time
- logout_time

Bus_Trip
- belongs_to :shift
- belongs_to :user
- trip_start_time
- trip_end_time
- start_location
- end_location
- price

User *the one that schedules the rides
- has_many :bus_trips
- username
- email
- password_digest
- first_name
- last_name
- phone_number