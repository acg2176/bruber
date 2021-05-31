# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_28_051645) do

  create_table "bus_trips", force: :cascade do |t|
    t.integer "shift_id", null: false
    t.integer "user_id", null: false
    t.datetime "trip_start_time"
    t.datetime "trip_end_time"
    t.string "start_location"
    t.string "end_location"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shift_id"], name: "index_bus_trips_on_shift_id"
    t.index ["user_id"], name: "index_bus_trips_on_user_id"
  end

  create_table "buses", force: :cascade do |t|
    t.string "bus_model"
    t.string "license_plate"
    t.integer "driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_buses_on_driver_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "drivers_license_number"
    t.date "expiry_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "driver_id", null: false
    t.integer "bus_id", null: false
    t.datetime "shift_start_time"
    t.datetime "shift_end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bus_id"], name: "index_shifts_on_bus_id"
    t.index ["driver_id"], name: "index_shifts_on_driver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bus_trips", "shifts"
  add_foreign_key "bus_trips", "users"
  add_foreign_key "buses", "drivers"
  add_foreign_key "shifts", "buses"
  add_foreign_key "shifts", "drivers"
end
