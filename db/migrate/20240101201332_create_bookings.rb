class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :flight_number
      t.date :departure_date

      t.timestamps
    end
  end
end
