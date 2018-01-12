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

ActiveRecord::Schema.define(version: 20180112012106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "programas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "version"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "descripcion"
  end

  create_table "propositos", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "propositos_rdas", force: :cascade do |t|
    t.integer  "rdas_id"
    t.integer  "propositos_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["propositos_id"], name: "index_propositos_rdas_on_propositos_id", using: :btree
    t.index ["rdas_id"], name: "index_propositos_rdas_on_rdas_id", using: :btree
  end

  create_table "rda_especificos", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "resumen"
    t.integer  "rdas_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["rdas_id"], name: "index_rda_especificos_on_rdas_id", using: :btree
  end

  create_table "rda_generals", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "programas_id"
    t.string   "nombre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["programas_id"], name: "index_rda_generals_on_programas_id", using: :btree
  end

  create_table "rdas", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "nombre"
  end

  create_table "unities", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "nombre"
    t.integer  "rda_generals_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "rdas_id"
    t.index ["rda_generals_id"], name: "index_unities_on_rda_generals_id", using: :btree
    t.index ["rdas_id"], name: "index_unities_on_rdas_id", using: :btree
  end

  add_foreign_key "propositos_rdas", "propositos", column: "propositos_id"
  add_foreign_key "propositos_rdas", "rdas", column: "rdas_id"
  add_foreign_key "rda_especificos", "rdas", column: "rdas_id"
  add_foreign_key "unities", "rda_generals", column: "rda_generals_id"
  add_foreign_key "unities", "rdas", column: "rdas_id"
end
