class BusTripsController < ApplicationController
    before_action :redirect_if_not_logged_in
    def new
        # binding.pry
        @bus_trip = BusTrip.new
    end

    def create
        binding.pry
        

        @bus_trip = current_user.bus_trips.build(bus_trip_params)
        
        #add the price here instead?
        # ((params[:trip_end_time] - @bus_trip[:trip_start_time]) /60).to_i 
        if ((@bus_trip[:trip_end_time]-@bus_trip[:trip_start_time])/60).to_i <= 60
            @bus_trip[:price] = 10
        else
            @bus_trip[:price] = 50
        end
        # start_time = @bus_trip[:trip_start_time]
        # end_time = @bus_trip[:trip_end_time]
        # #CONVERSION STILL A PROBLEM
        # @bus_trip[:trip_start_time] = start_time.to_date
        # @bus_trip[:trip_end_time] = end_time.to_date
        # binding.pry

        #Update: need to add @bus_trip.shift
       if @bus_trip.save
        #redirect to show page
        redirect_to bus_trips_path
       else
        render :new
       end
      
    end

    private
    # def add_price
    #     if ((bus_trip_params[:trip_end_time]-bus_trip_params[:trip_start_time])/60).to_i <= 60
    #         bus_trip_params[:price] = 10
    #     else
    #         bus_trip_params[:price] = 50
    #     end
    # end

    

    def bus_trip_params
        params.require(:bus_trip).permit(:trip_start_time, :trip_end_time, :start_location, :end_location, :price)
        # "trip_start_time(1i)"=>"2021", "trip_start_time(2i)"=>"6", "trip_start_time(3i)"=>"15", 
        # "trip_start_time(4i)"=>"06", "trip_start_time(5i)"=>"00", "trip_end_time(1i)"=>"2021", "trip_end_time(2i)"=>"6", "trip_end_time(3i)"=>"15", "trip_end_time(4i)"=>"06", 
        # "trip_end_time(5i)"=>"30", "start_location"=>"New York", "end_location"=>"Queens"
    end

    def shift_params
        params.permit(:driver_id, :bus_id)
    end

end
