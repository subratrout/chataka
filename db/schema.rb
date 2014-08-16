# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140816075958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "manufacturers", force: true do |t|
    t.string   "manufacturer_name"
    t.string   "brand_name"
    t.text     "street1"
    t.text     "street2"
    t.text     "post_office"
    t.string   "city"
    t.string   "dist"
    t.string   "state"
    t.text     "pin"
    t.string   "mobile"
    t.string   "cml_no"
    t.date     "valid_date"
    t.boolean  "operative_status"
    t.boolean  "bottle_20liters"
    t.boolean  "bottle_2liters"
    t.boolean  "bottle_1liter"
    t.boolean  "bottle_500ml"
    t.string   "email"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  add_index "manufacturers", ["brand_name"], name: "index_manufacturers_on_brand_name", using: :btree
  add_index "manufacturers", ["city"], name: "index_manufacturers_on_city", using: :btree
  add_index "manufacturers", ["cml_no"], name: "index_manufacturers_on_cml_no", using: :btree
  add_index "manufacturers", ["description"], name: "index_manufacturers_on_description", using: :btree
  add_index "manufacturers", ["dist"], name: "index_manufacturers_on_dist", using: :btree
  add_index "manufacturers", ["email"], name: "index_manufacturers_on_email", using: :btree
  add_index "manufacturers", ["manufacturer_name"], name: "index_manufacturers_on_manufacturer_name", using: :btree
  add_index "manufacturers", ["mobile"], name: "index_manufacturers_on_mobile", using: :btree
  add_index "manufacturers", ["pin"], name: "index_manufacturers_on_pin", using: :btree
  add_index "manufacturers", ["post_office"], name: "index_manufacturers_on_post_office", using: :btree
  add_index "manufacturers", ["state"], name: "index_manufacturers_on_state", using: :btree
  add_index "manufacturers", ["street1"], name: "index_manufacturers_on_street1", using: :btree
  add_index "manufacturers", ["street2"], name: "index_manufacturers_on_street2", using: :btree
  add_index "manufacturers", ["valid_date"], name: "index_manufacturers_on_valid_date", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "water_qualities", force: true do |t|
    t.string   "city"
    t.string   "state"
    t.string   "address"
    t.string   "address1"
    t.string   "address2"
    t.string   "place"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "test_year"
    t.string   "source"
    t.string   "source_type"
    t.string   "source_owner"
    t.string   "color_hazen_unit"
    t.string   "odor"
    t.string   "taste"
    t.string   "turbidity"
    t.string   "ph_value"
    t.string   "total_hardness"
    t.string   "iron"
    t.string   "chloride"
    t.string   "residual_free_chlorine"
    t.string   "fluoride"
    t.string   "total_dissolved_solids"
    t.string   "calcium"
    t.string   "magnesium"
    t.string   "copper"
    t.string   "manganese"
    t.string   "sulphate"
    t.string   "nitrate"
    t.string   "phenolic_compounds"
    t.string   "mercury"
    t.string   "cadmium"
    t.string   "selenium"
    t.string   "arsenic"
    t.string   "cyanide"
    t.string   "lead"
    t.string   "zinc"
    t.string   "sodium"
    t.string   "potassium"
    t.string   "hexavalent_chromium"
    t.string   "alkalinity"
    t.string   "pesticides"
    t.string   "detergent"
    t.string   "mineral_oil"
    t.string   "electrical_conductivity"
    t.string   "dissolved_oxygen"
    t.string   "biological_oxygen_demand"
    t.string   "chemical_oxygen_demand"
    t.string   "coliform"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "water_qualities", ["address"], name: "index_water_qualities_on_address", using: :btree
  add_index "water_qualities", ["address1"], name: "index_water_qualities_on_address1", using: :btree
  add_index "water_qualities", ["address2"], name: "index_water_qualities_on_address2", using: :btree
  add_index "water_qualities", ["city"], name: "index_water_qualities_on_city", using: :btree
  add_index "water_qualities", ["latitude"], name: "index_water_qualities_on_latitude", using: :btree
  add_index "water_qualities", ["longitude"], name: "index_water_qualities_on_longitude", using: :btree
  add_index "water_qualities", ["place"], name: "index_water_qualities_on_place", using: :btree
  add_index "water_qualities", ["source"], name: "index_water_qualities_on_source", using: :btree
  add_index "water_qualities", ["source_owner"], name: "index_water_qualities_on_source_owner", using: :btree
  add_index "water_qualities", ["source_type"], name: "index_water_qualities_on_source_type", using: :btree
  add_index "water_qualities", ["state"], name: "index_water_qualities_on_state", using: :btree
  add_index "water_qualities", ["test_year"], name: "index_water_qualities_on_test_year", using: :btree

end
