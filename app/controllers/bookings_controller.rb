class BookingsController < ApplicationController
    def new
        @flight_id = params[:flight]
        @flight_object = Flight.find(params[:flight])
        @number_of_passengers = params[:number_of_passengers]
        @passenger = Passenger.new
        @booking = Booking.new
    end
end
