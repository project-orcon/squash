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

ActiveRecord::Schema.define(version: 20181107133616) do

  create_table "addresses", force: :cascade do |t|
    t.string "line1"
    t.string "line2"
    t.string "suburb"
    t.string "postcode"
    t.string "state"
    t.string "country"
    t.integer "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_addresses_on_club_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer "court_id"
    t.integer "price_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["court_id"], name: "index_availabilities_on_court_id"
    t.index ["price_id"], name: "index_availabilities_on_price_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer "court_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.integer "availability_id"
    t.integer "club_id"
    t.index ["availability_id"], name: "index_bookings_on_availability_id"
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["club_id"], name: "index_bookings_on_club_id"
    t.index ["court_id"], name: "index_bookings_on_court_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_clubs_on_owner_id"
  end

  create_table "courts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "club_id"
    t.index ["club_id"], name: "index_courts_on_club_id"
  end

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "amount"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
  end

  create_table "prices", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_prices_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "type"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
