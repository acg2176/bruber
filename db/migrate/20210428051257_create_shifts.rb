class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.belongs_to :driver, null: false, foreign_key: true
      t.belongs_to :bus, null: false, foreign_key: true
      t.timestamp :shift_start_time
      t.timestamp :shift_end_time

      t.timestamps
    end
  end
end
