class CreateBuses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|
      t.string :bus_model
      t.string :license_plate
      t.belongs_to :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
