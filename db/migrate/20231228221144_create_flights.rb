class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.bigint :departure_airport_id
      t.bigint :arrival_airport_id
      t.datetime :start_datetime
      t.string :flight_duration
      t.references :airport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
