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

ActiveRecord::Schema.define(version: 20181113025003) do

  create_table "artist_has_sponsors", force: :cascade do |t|
    t.string   "as_description"
    t.integer  "Artist_id"
    t.integer  "Sponsor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["Artist_id"], name: "index_artist_has_sponsors_on_Artist_id"
    t.index ["Sponsor_id"], name: "index_artist_has_sponsors_on_Sponsor_id"
  end

  create_table "artist_has_types", force: :cascade do |t|
    t.string   "ah_description"
    t.integer  "Artist_id"
    t.integer  "ArtistType_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["ArtistType_id"], name: "index_artist_has_types_on_ArtistType_id"
    t.index ["Artist_id"], name: "index_artist_has_types_on_Artist_id"
  end

  create_table "artist_types", force: :cascade do |t|
    t.string   "at_description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "ar_name"
    t.string   "ar_lastname"
    t.string   "ar_address"
    t.string   "ar_phone"
    t.string   "ar_email"
    t.integer  "User_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["User_id"], name: "index_artists_on_User_id"
  end

  create_table "creations", force: :cascade do |t|
    t.string   "cr_description"
    t.datetime "cr_date"
    t.integer  "Artist_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["Artist_id"], name: "index_creations_on_Artist_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "ev_title"
    t.text     "ev_description"
    t.datetime "ev_date"
    t.text     "ev_place"
    t.string   "ev_planner"
    t.integer  "Artist_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["Artist_id"], name: "index_events_on_Artist_id"
  end

  create_table "job_oportunities", force: :cascade do |t|
    t.string   "jo_title"
    t.text     "jo_description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "Sponsor_id"
    t.index ["Sponsor_id"], name: "index_job_oportunities_on_Sponsor_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "sp_name"
    t.string   "sp_address"
    t.string   "sp_phone"
    t.string   "sp_email"
    t.string   "sp_contact"
    t.string   "sp_nit"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_sponsors_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "us_name"
    t.string   "us_password"
    t.string   "us_token"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
