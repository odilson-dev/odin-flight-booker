class BookingsController < ApplicationController
    def new
        @flight_id = params[:flight]
        @flight_object = Flight.find(params[:flight])
        @number_of_passengers = params[:number_of_passengers]
        @booking = Booking.new
        @number_of_passengers.to_i.times { @booking.passengers.build }
    end

    def create
        @flight_object = Flight.find(params[:booking][:flight_number])
        

        @booking = Booking.new(booking_params)
        if @booking.save
            
          redirect_to booking_path(@booking), notice: "Booking was successfully created!"
          # Redirect to show page or any other path
        else
          render 'new', status: :unprocessable_entity
        end
        
    end

    def show
        @current_booking = Booking.find(params[:id])
        
        
    end

    private
    
    def booking_params
        params.require(:booking).permit(:flight_number, :departure_date, passengers_attributes: [:name, :email])
    end
end
