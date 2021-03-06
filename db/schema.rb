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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130403223323) do

  create_table "addresses", :force => true do |t|
    t.string   "full_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_number"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "addresses", ["user_id"], :name => "index_addresses_on_user_id"

  create_table "carts", :force => true do |t|
    t.integer  "user_id"
    t.string   "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "carts", ["user_id"], :name => "index_carts_on_user_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "photo_url"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "unit_price_cents"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "line_items", ["order_id"], :name => "index_line_items_on_order_id"
  add_index "line_items", ["product_id"], :name => "index_line_items_on_product_id_id"

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.string   "status"
    t.integer  "subtotal"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "price",            :limit => 255
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.boolean  "visible",                         :default => true
    t.string   "long_title"
    t.text     "long_description"
    t.string   "bullet1"
    t.string   "bullet2"
    t.string   "bullet3"
    t.string   "bullet4"
    t.string   "bullet5"
    t.string   "color"
    t.string   "asin"
    t.string   "model_number"
    t.string   "photo_url"
    t.string   "units"
    t.integer  "cost_cents"
    t.string   "length"
    t.string   "width"
    t.string   "height"
    t.string   "weight"
    t.string   "upc"
  end

  create_table "promotions", :force => true do |t|
    t.integer  "product_id"
    t.string   "title"
    t.integer  "percent"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "promotions", ["product_id"], :name => "index_promotions_on_product_id"

  create_table "taggings", :force => true do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "taggings", ["category_id"], :name => "index_taggings_on_category_id"
  add_index "taggings", ["product_id"], :name => "index_taggings_on_product_id"

  create_table "users", :force => true do |t|
    t.string   "username",                              :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "display_name"
    t.boolean  "admin",              :default => false
    t.string   "stripe_customer_id"
  end

end
