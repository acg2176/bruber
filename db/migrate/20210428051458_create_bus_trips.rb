class CreateBusTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :bus_trips do |t|
      t.belongs_to :shift, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamp :trip_start_time
      t.timestamp :trip_end_time
      t.string :start_location
      t.string :end_location
      t.integer :price

      t.timestamps
    end
  end
end
