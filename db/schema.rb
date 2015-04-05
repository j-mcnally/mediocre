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

ActiveRecord::Schema.define(version: 20150404230100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asset_attachments", force: :cascade do |t|
    t.integer  "asset_id"
    t.integer  "assetable_id"
    t.string   "assetable_type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort_order",     default: 0
  end

  add_index "asset_attachments", ["asset_id"], name: "index_asset_attachments_on_asset_id", using: :btree
  add_index "asset_attachments", ["assetable_id"], name: "index_asset_attachments_on_assetable_id", using: :btree
  add_index "asset_attachments", ["assetable_type", "assetable_id", "name"], name: "named_asset", unique: true, using: :btree
  add_index "asset_attachments", ["assetable_type", "assetable_id"], name: "index_asset_attachments_on_assetable_type_and_assetable_id", using: :btree

  create_table "assets", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.text     "body"
    t.string   "filename"
    t.string   "checksum"
    t.string   "path"
    t.string   "content_type"
    t.integer  "file_size"
    t.integer  "width"
    t.integer  "height"
    t.integer  "duration"
    t.integer  "bit_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "ratio"
  end

  create_table "galleries", force: :cascade do |t|
    t.integer  "galleryable_id"
    t.string   "galleryable_type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "galleries", ["galleryable_id"], name: "index_galleries_on_galleryable_id", using: :btree
  add_index "galleries", ["galleryable_type", "galleryable_id", "name"], name: "named_gallery", unique: true, using: :btree
  add_index "galleries", ["galleryable_type", "galleryable_id"], name: "index_galleries_on_galleryable_type_and_galleryable_id", using: :btree

  create_table "sites", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
