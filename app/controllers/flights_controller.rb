class FlightsController < ApplicationController
    def index

        @departure_airport_options = Flight.pluck(:departure_airport_id).uniq.map { |id| Airport.find(id) }.map{ |u| [ u.name, u.id ] }


        @arriving_airport_options =  Flight.pluck(:arrival_airport_id).uniq.map { |id| Airport.find(id) }.map{ |u| [ u.name, u.id ] }

        @flight_date_options = Flight.all.map{ |u| [ u.start_datetime, u.id ] }

        @flights = Flight.where(
            departure_airport_id: params[:departure_code],
            arrival_airport_id: params[:arrival_code]
          )
        
        @number_of_passengers = params[:num_ticket]
    end
end
