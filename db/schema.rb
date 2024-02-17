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

ActiveRecord::Schema[7.1].define(version: 2024_02_08_124948) do
  create_table "attaque_cts", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "attaque_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attaque_dts", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "attaque_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attaque_egg_moves", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "attaque_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attaque_levels", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "attaque_id"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attaque_tutorings", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "attaque_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attaques", force: :cascade do |t|
    t.string "name"
    t.integer "type_id"
    t.integer "energie1"
    t.integer "energie2"
    t.string "category"
    t.string "range"
    t.string "precision"
    t.integer "damage_base"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.text "url"
    t.text "image"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breedings", force: :cascade do |t|
    t.string "ratio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cat_talents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipes", force: :cascade do |t|
    t.string "pseudo"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evolutions", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "evolution_id"
    t.string "evolution_way"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formes", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "evolution_id"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generations", force: :cascade do |t|
    t.string "name"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indices", force: :cascade do |t|
    t.text "title"
    t.text "paraph"
    t.integer "rank"
    t.boolean "important"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_has_talents", force: :cascade do |t|
    t.integer "pokemon_id"
    t.integer "talent_id"
    t.integer "cat_talent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "generation_id"
    t.string "category"
    t.integer "dex_number"
    t.float "height"
    t.float "weight"
    t.integer "breeding_id"
    t.integer "type_id"
    t.integer "type2_id"
    t.integer "vita"
    t.integer "dex"
    t.integer "for"
    t.integer "con"
    t.integer "end"
    t.integer "vol"
    t.text "main_picture"
    t.text "mini_picture"
    t.text "description"
    t.integer "pre_evolution_id"
    t.string "pre_evolution_way"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talents", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.float "bug"
    t.float "dark"
    t.float "dragon"
    t.float "electric"
    t.float "fairy"
    t.float "fighting"
    t.float "fire"
    t.float "flying"
    t.float "ghost"
    t.float "grass"
    t.float "ground"
    t.float "ice"
    t.float "normal"
    t.float "poison"
    t.float "psychic"
    t.float "rock"
    t.float "steel"
    t.float "water"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "pseudo", default: "", null: false
    t.integer "role", default: 0, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
