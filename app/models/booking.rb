class Booking < ApplicationRecord
    validates :flight_number, presence: true
    validates :departure_date, presence: true

    has_many :passengers, dependent: :destroy
    accepts_nested_attributes_for :passengers, allow_destroy: true
end
