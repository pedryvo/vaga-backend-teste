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

ActiveRecord::Schema.define(version: 2021_06_27_062348) do

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "pokedex_number"
    t.string "img_name"
    t.string "generation"
    t.string "evolution_stage"
    t.string "evolved"
    t.string "family_id"
    t.string "cross_generation"
    t.string "type_1"
    t.string "type_2"
    t.string "weather_1"
    t.string "weather"
    t.string "stat_total"
    t.string "atk"
    t.string "def"
    t.string "sta"
    t.string "legendary"
    t.string "aquierable"
    t.string "spawns"
    t.string "regional"
    t.string "raidable"
    t.string "hatchable"
    t.string "shiny"
    t.string "nest"
    t.string "new"
    t.string "not_gettable"
    t.string "future_evolve"
    t.string "hundred_cp_40"
    t.string "hundred_cp_39"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
