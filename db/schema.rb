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

ActiveRecord::Schema.define(version: 2019_12_11_064825) do

  create_table "addresses", force: :cascade do |t|
    t.integer "user_id"
    t.string "add_postalcode"
    t.string "add_address"
    t.string "add_lastname"
    t.string "add_firstname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "admin_email", null: false
    t.string "admin_password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_name", null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_cds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cd_id"
    t.integer "cart_count", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cds", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "label_id"
    t.integer "genre_id"
    t.string "cd_title", null: false
    t.string "jacket_image_id", null: false
    t.datetime "release_date", null: false
    t.integer "price", null: false
    t.integer "status", null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discs", force: :cascade do |t|
    t.integer "cd_id", null: false
    t.integer "disc_rank", null: false
    t.string "disc_title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name", null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cd_id"
    t.datetime "created_at", null: false
    t.datetime "update_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "label_name", null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musics", force: :cascade do |t|
    t.integer "disc_id", null: false
    t.integer "music_rank", null: false
    t.string "music_title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_cds", force: :cascade do |t|
    t.integer "cd_id"
    t.integer "order_id"
    t.integer "order_cd_count", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.string "payment", null: false
    t.integer "total", null: false
    t.integer "deliver_fee", null: false
    t.integer "deliver_status", null: false
    t.integer "order_count", null: false
    t.integer "tax", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restocks", force: :cascade do |t|
    t.integer "cd_id", null: false
    t.datetime "restock_date", null: false
    t.integer "restock_count", null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cd_id"
    t.string "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "update_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "lastname", null: false
    t.string "firstname", null: false
    t.string "lastname_kana", null: false
    t.string "firstname_kana", null: false
    t.string "phone", null: false
    t.string "password", null: false
    t.string "profile_image_id"
    t.string "postalcode", null: false
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "update_at", null: false
    t.datetime "deleted_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["firstname"], name: "index_users_on_firstname"
    t.index ["lastname"], name: "index_users_on_lastname"
    t.index ["phone"], name: "index_users_on_phone"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
