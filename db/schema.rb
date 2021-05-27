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

ActiveRecord::Schema.define(version: 2021_05_22_203650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "location"
    t.string "latitude"
    t.string "longitude"
    t.integer "propid"
    t.float "price"
    t.float "guest_reviews"
    t.float "guest_rating"
    t.float "rating"
    t.string "address"
    t.string "neighbourhood"
    t.string "distance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "check_in"
    t.string "check_out"
    t.integer "no_of_night"
    t.integer "no_of_room"
    t.string "cancelation_policy"
    t.float "total"
    t.bigint "traveler_id", null: false
    t.bigint "hotel_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hotel_id"], name: "index_reservations_on_hotel_id"
    t.index ["traveler_id"], name: "index_reservations_on_traveler_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "score"
    t.bigint "hotel_id", null: false
    t.bigint "traveler_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hotel_id"], name: "index_reviews_on_hotel_id"
    t.index ["traveler_id"], name: "index_reviews_on_traveler_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "age"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reservations", "hotels"
  add_foreign_key "reservations", "travelers"
  add_foreign_key "reviews", "hotels"
  add_foreign_key "reviews", "travelers"
end
