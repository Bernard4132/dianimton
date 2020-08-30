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

ActiveRecord::Schema.define(version: 20200823111404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "categoryicon"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "categoryproducts", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "genservices", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phonenumber"
    t.text     "businessdets"
    t.string   "servicetype"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "prodorderfeedbacks", force: :cascade do |t|
    t.integer  "productorder_id"
    t.integer  "user_id"
    t.text     "feedbacktxt"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "productorders", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.string   "amount"
    t.boolean  "paid",       default: false
    t.text     "addinfo"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "productimage"
    t.integer  "shop_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "serviceorders", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "user_id"
    t.string   "amount"
    t.boolean  "paid",       default: false
    t.text     "addinfo"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "servtype_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "servtypes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "servtypeicn"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "shopimage"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "shoptype"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           default: "", null: false
    t.string   "encrypted_password",              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "firstname"
    t.string   "fullname"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.text     "authentication_token"
    t.datetime "authentication_token_created_at"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
