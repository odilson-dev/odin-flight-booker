# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flight.create([
                { departure_airport_id: 10, airport_id: 10, arrival_airport_id: 12, start_datetime: DateTime.now, flight_duration: "2 hours"},
                { departure_airport_id: 14, airport_id: 14, arrival_airport_id: 12, start_datetime: DateTime.now, flight_duration: "7 hours"},
                { departure_airport_id: 11, airport_id: 11, arrival_airport_id: 13, start_datetime: DateTime.now, flight_duration: "2 hours"},
                { departure_airport_id: 14, airport_id: 14, arrival_airport_id: 10, start_datetime: DateTime.now, flight_duration: "2 hours"},
                { departure_airport_id: 11, airport_id: 11, arrival_airport_id: 13, start_datetime: DateTime.now, flight_duration: "2 hours"}
])