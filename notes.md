https://www.vertabelo.com/blog/calling-all-cabs-a-database-model-for-a-taxi-service/
Bus App

Bus
- has_many :shifts
- has_many :drivers, through :shifts
- has_many :bus_trips, through :shifts
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

Shift *join table joins drivers and buses
- belongs_to :driver
- belongs_to :bus
- has_many :bus_trips
- has_many :users, through :bus_trips
- shift_start_time
- shift_end_time
- login_time
- logout_time

Bus_Trip *join table joins users and shifts
- belongs_to :shift
- belongs_to :user
- trip_start_time
- trip_end_time
- start_location
- end_location
- price

User
- has_many :bus_trips
- has_many :shifts, through bus_trips
- username
- email
- password_digest
- first_name
- last_name
- phone_number