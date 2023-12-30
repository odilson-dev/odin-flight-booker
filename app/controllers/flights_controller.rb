class FlightsController < ApplicationController
    def index
        @airport_options = Airport.all.map{ |u| [ u.name, u.id ] }
        @flights = Flight.all

        @arriving_airport_options = Airport.where.not(arriving_flights: nil)
        .map{ |airport| [airport.name, airport.id] }
        Flight.select(:arrival_airport_id)
        @arriving_airport_options =  Flight.pluck(:arrival_airport_id).uniq.map { |id| Airport.find(id) }.map{ |u| [ u.name, u.id ] }


        @departure_airport_options = Flight.pluck(:departure_airport_id).uniq.map { |id| Airport.find(id) }.map{ |u| [ u.name, u.id ] }

        @flight_date_options = Flight.all.map{ |u| [ u.start_datetime, u.id ] }
    end
end
