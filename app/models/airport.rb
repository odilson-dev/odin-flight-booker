class Airport < ApplicationRecord
    validates :code, :name, presence: true

    has_many :arriving_flights, class_name: "Flight", foreign_key: 'arrival_airport_id'
    has_many :departings_flights, class_name: "Flight", foreign_key: 'departure_airport_id'
end
