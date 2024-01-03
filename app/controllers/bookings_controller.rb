class BookingsController < ApplicationController
    def new
        @flight_id = params[:flight]
        @flight_object = Flight.find(params[:flight])
        @number_of_passengers = params[:number_of_passengers]
        @booking = Booking.new
        @number_of_passengers.to_i.times { @booking.passengers.build }
    end

    private
    
    def booking_params
        params.require(:booking).permit(:flight_number, :departure_date, passengers_attributes: [:name, :email])
    end
end
