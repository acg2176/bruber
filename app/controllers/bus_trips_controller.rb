class BusTripsController < ApplicationController
    before_action :redirect_if_not_logged_in
    def new
        # binding.pry
        @bus_trip = BusTrip.new
    end

    def create
        @bus_trip = current_user.bus_trips.build(bus_trip_params)
        binding.pry
       if @bus_trip.save
        #redirect to show page
        binding.pry
        redirect_to bus_trip_path
       else
        render :new
       end
      
    end

    private

    def bus_trip_params
        params.require(:bus_trip).permit(:trip_start_time, :trip_end_time, :start_location, :end_location)
        # "trip_start_time(1i)"=>"2021", "trip_start_time(2i)"=>"6", "trip_start_time(3i)"=>"15", 
        # "trip_start_time(4i)"=>"06", "trip_start_time(5i)"=>"00", "trip_end_time(1i)"=>"2021", "trip_end_time(2i)"=>"6", "trip_end_time(3i)"=>"15", "trip_end_time(4i)"=>"06", 
        # "trip_end_time(5i)"=>"30", "start_location"=>"New York", "end_location"=>"Queens"
    end

end
