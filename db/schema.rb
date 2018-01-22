# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180120063500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "date"
    t.float "total_amount"
    t.integer "booking_number"
    t.string "check_in"
    t.string "check_out"
    t.boolean "discount_availed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.text "address"
    t.string "city"
    t.float "price"
    t.string "property_type"
    t.string "discounts"
    t.string "boolean"
    t.float "discount_amount"
    t.boolean "has_extended_stay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "image"
    t.text "description"
    t.integer "number_of_beds"
    t.integer "number_of_baths"
    t.integer "number_of_parkings"
    t.boolean "pets_allowed"
    t.boolean "wifi_present"
    t.boolean "smoking_allowed"
    t.text "cancellation_policy"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "full_name"
    t.string "email"
    t.string "profile_pic"
    t.string "user_type"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
