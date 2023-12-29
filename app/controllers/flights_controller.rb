class FlightsController < ApplicationController
    def index
        @airports = Airports.all
        @flights = Flights.all
    end
end
