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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_05_08_000153) do
=======
ActiveRecord::Schema.define(version: 2021_05_11_202250) do
>>>>>>> rework_associations
=======
ActiveRecord::Schema.define(version: 2021_05_11_005420) do
>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cat_url"
<<<<<<< HEAD
<<<<<<< HEAD
=======
    t.integer "creator_id"
>>>>>>> rework_associations
=======
    t.integer "user_id"
>>>>>>> 5a8d302057026b5d60c0303e6e3befc97133f6a9
  end

  create_table "minigames", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cat_id"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trades", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cat_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "credits", default: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "uid"
  end

end
