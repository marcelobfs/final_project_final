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

ActiveRecord::Schema.define(version: 20181205041011) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "activity_logs", force: :cascade do |t|
    t.string "user_name"
    t.string "action"
    t.string "activity_description"
    t.string "file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cattle_sales", force: :cascade do |t|
    t.integer "cattle_id"
    t.string "brinco"
    t.float "peso"
    t.float "preco_por_kilo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cattles", force: :cascade do |t|
    t.string "brinco"
    t.date "data_compra_ou_desmame"
    t.date "data_nascimento"
    t.string "origem"
    t.string "raca"
    t.string "sexo"
    t.string "pai"
    t.string "brinco_mae"
    t.float "peso_entrada"
    t.float "preco_por_kilo"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deaths", force: :cascade do |t|
    t.integer "cattle_id"
    t.string "brinco"
    t.string "causa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "market_prices", force: :cascade do |t|
    t.string "last_update"
    t.string "observation"
    t.string "age_group"
    t.string "gender"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregnancies", force: :cascade do |t|
    t.integer "cattle_id"
    t.string "brinco"
    t.string "touro"
    t.integer "prenha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccinations", force: :cascade do |t|
    t.integer "cattle_id"
    t.string "brinco"
    t.string "tipo_vacina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weightings", force: :cascade do |t|
    t.integer "cattle_id"
    t.string "brinco"
    t.string "lote"
    t.string "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
