class Flight < ApplicationRecord
  validates :departure_airport_id, :arrival_airport_id, :start_datetime, :flight_duration, presence: true

  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'
end
