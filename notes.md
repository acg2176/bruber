Bus App

Bus
- belongs_to :driver
- has_many :shifts
- has_many :drivers, through :shifts
- bus_model

Driver
- has_many :shifts
- has_many :buses, through :shifts
- first name
-  last name
- drivers_license_number
- expiry_date

Shift
- belongs_to :driver
- belongs_to :bus
- has_many :bus_trips
- shift_start_time
- shift_end_time

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
- phone_number