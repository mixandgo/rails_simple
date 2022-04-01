# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_01_081323) do
  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "color_id", null: false
    t.index ["color_id"], name: "index_colors_users_on_color_id"
    t.index ["user_id"], name: "index_colors_users_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.string "commentable_type", null: false
    t.integer "commentable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable"
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_emails_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.integer "qty"
    t.integer "price"
    t.datetime "created_at", precision: nil
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.text "bio"
    t.integer "age"
    t.boolean "happy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "colors_users", "colors"
  add_foreign_key "colors_users", "users"
  add_foreign_key "emails", "users"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
end
