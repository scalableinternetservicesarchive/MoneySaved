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

ActiveRecord::Schema.define(version: 20161025232853) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "deal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_comments_on_deal_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "deals", force: :cascade do |t|
    t.string   "name"
    t.string   "pic_url"
    t.date     "effdate"
    t.date     "expdate"
    t.integer  "label"
    t.string   "store"
    t.string   "link"
    t.string   "intro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "price"
    t.index ["label"], name: "index_deals_on_label"
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "deal_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id", "user_id"], name: "index_likes_on_deal_id_and_user_id", unique: true
    t.index ["deal_id"], name: "index_likes_on_deal_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_no"
    t.string   "address"
    t.string   "name"
    t.integer  "count"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "deal_id"
    t.index ["deal_id"], name: "index_orders_on_deal_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.integer  "like_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["like_id"], name: "index_recommendations_on_like_id"
    t.index ["order_id"], name: "index_recommendations_on_order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
    t.boolean  "blocked",         default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
