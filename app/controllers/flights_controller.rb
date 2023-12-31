class FlightsController < ApplicationController
    def index

        @departure_airport_options = Flight.pluck(:departure_airport_id).uniq.map { |id| Airport.find(id) }.map{ |u| [ u.name, u.code ] }


        @arriving_airport_options =  Flight.pluck(:arrival_airport_id).uniq.map { |id| Airport.find(id) }.map{ |u| [ u.name, u.code ] }

        @flight_date_options = Flight.all.map{ |u| [ u.start_datetime, u.id ] }

        @test = params

        @departure_code = params[:departure_code]
    end
end
