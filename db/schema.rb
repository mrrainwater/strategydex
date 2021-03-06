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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140828033550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "abilities_pokemons", id: false, force: true do |t|
    t.integer "ability_id", null: false
    t.integer "pokemon_id", null: false
  end

  create_table "evolutions", force: true do |t|
    t.integer  "pokemon_id"
    t.integer  "evolved_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.string   "name"
    t.string   "move_type"
    t.string   "category"
    t.integer  "power"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves_pokemons", id: false, force: true do |t|
    t.integer "move_id",    null: false
    t.integer "pokemon_id", null: false
  end

  create_table "pokemons", force: true do |t|
    t.string   "name"
    t.integer  "national_id"
    t.integer  "hp"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "speed"
    t.integer  "sp_atk"
    t.integer  "sp_def"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pokemons_types", id: false, force: true do |t|
    t.integer "pokemon_id", null: false
    t.integer "type_id",    null: false
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
