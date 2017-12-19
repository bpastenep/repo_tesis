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

ActiveRecord::Schema.define(version: 20171219201247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Propositos_Rdas", id: false, force: :cascade do |t|
    t.integer "proposito_id", null: false
    t.integer "rda_id",       null: false
    t.index ["proposito_id", "rda_id"], name: "index_Propositos_Rdas_on_proposito_id_and_rda_id", using: :btree
    t.index ["rda_id", "proposito_id"], name: "index_Propositos_Rdas_on_rda_id_and_proposito_id", using: :btree
  end

  create_table "programas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "propositos", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rdas", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "programa_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["programa_id"], name: "index_rdas_on_programa_id", using: :btree
  end

  create_table "unities", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "id_rda"
    t.string   "nombre"
    t.integer  "id_programa"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "rdas", "programas"
end
