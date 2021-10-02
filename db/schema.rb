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

ActiveRecord::Schema.define(version: 2021_09_30_033338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoptions", force: :cascade do |t|
    t.integer "adoption_id"
    t.integer "user_id"
    t.integer "pet_id"
    t.datetime "adoption_date"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "inventory_id"
    t.integer "user_id"
    t.integer "item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "item_id"
    t.string "item_name"
    t.string "item_description"
    t.integer "monies_cost"
  end

  create_table "pets", force: :cascade do |t|
    t.integer "pet_id"
    t.string "pet_name"
    t.string "pet_description"
    t.boolean "is_adopted"
    t.integer "swag_pts"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_name"
    t.string "password_digest"
    t.integer "total_monies"
  end

end
