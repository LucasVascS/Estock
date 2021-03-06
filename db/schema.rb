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

ActiveRecord::Schema.define(version: 2021_07_03_032746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "productgenre"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_products_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "personregistration"
    t.string "cpf"
    t.string "cnpj"
    t.string "cep"
    t.string "publicplace"
    t.string "complement"
    t.string "district"
    t.string "location"
    t.string "phew"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_items", force: :cascade do |t|
    t.bigint "stock_id"
    t.bigint "product_id"
    t.integer "updated_by_id"
    t.datetime "exit_at"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stock_items_on_product_id"
    t.index ["stock_id"], name: "index_stock_items_on_stock_id"
    t.index ["updated_by_id"], name: "index_stock_items_on_updated_by_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "created_by_id"
    t.integer "quantity"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_id"], name: "index_stocks_on_created_by_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "products", "providers"
  add_foreign_key "stock_items", "products"
  add_foreign_key "stock_items", "stocks"
end
