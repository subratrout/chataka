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

ActiveRecord::Schema.define(version: 20140806042200) do

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

end
