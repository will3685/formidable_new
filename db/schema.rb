# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_27_203052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "agendamentos", force: :cascade do |t|
    t.datetime "scheduled_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "category_servico_id", null: false
    t.bigint "salon_id", null: false
    t.index ["category_servico_id"], name: "index_agendamentos_on_category_servico_id"
    t.index ["salon_id"], name: "index_agendamentos_on_salon_id"
    t.index ["user_id"], name: "index_agendamentos_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_servicos", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", null: false
    t.text "description", null: false
    t.decimal "price", precision: 8, scale: 2, null: false
    t.bigint "salon_id", null: false
    t.bigint "servico_id", null: false
    t.index ["salon_id"], name: "index_category_servicos_on_salon_id"
    t.index ["servico_id"], name: "index_category_servicos_on_servico_id"
  end

  create_table "favoritos", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "salon_id", null: false
    t.bigint "user_id", null: false
    t.index ["salon_id"], name: "index_favoritos_on_salon_id"
    t.index ["user_id"], name: "index_favoritos_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "body"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "salon_id", null: false
    t.bigint "user_id", null: false
    t.index ["salon_id"], name: "index_reviews_on_salon_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "salon_categories", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "salon_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_salon_categories_on_category_id"
    t.index ["salon_id"], name: "index_salon_categories_on_salon_id"
  end

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address", null: false
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id", null: false
    t.text "description"
    t.index ["user_id"], name: "index_salons_on_user_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_name", null: false
    t.boolean "has_salon", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "agendamentos", "category_servicos"
  add_foreign_key "agendamentos", "salons"
  add_foreign_key "agendamentos", "users"
  add_foreign_key "category_servicos", "salons"
  add_foreign_key "category_servicos", "servicos"
  add_foreign_key "favoritos", "salons"
  add_foreign_key "favoritos", "users"
  add_foreign_key "reviews", "salons"
  add_foreign_key "reviews", "users"
  add_foreign_key "salon_categories", "categories"
  add_foreign_key "salon_categories", "salons"
  add_foreign_key "salons", "users"
end
