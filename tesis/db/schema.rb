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

ActiveRecord::Schema.define(version: 20171019195551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "had_rdas", force: :cascade do |t|
    t.integer  "resultados_de_aprendizaje_id"
    t.integer  "programa_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["programa_id"], name: "index_had_rdas_on_programa_id", using: :btree
    t.index ["resultados_de_aprendizaje_id"], name: "index_had_rdas_on_resultados_de_aprendizaje_id", using: :btree
  end

  create_table "planificacions", force: :cascade do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.integer  "cantidad_clases"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "programa_id"
    t.index ["programa_id"], name: "index_planificacions_on_programa_id", using: :btree
  end

  create_table "pregunta", force: :cascade do |t|
    t.text     "pregunta_realizar"
    t.string   "tipo_pregunta"
    t.text     "respuesta"
    t.integer  "id_imagen"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "programas", force: :cascade do |t|
    t.string   "carrera"
    t.string   "nombre"
    t.integer  "codigo"
    t.text     "requisitos"
    t.string   "dicta"
    t.string   "ano_sem_vil"
    t.string   "categoria"
    t.integer  "horas_presen"
    t.integer  "TEL"
    t.text     "perfil_prof"
    t.string   "version"
    t.string   "resolucion"
    t.string   "autor_es"
    t.text     "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "resultados_de_aprendizajes", force: :cascade do |t|
    t.text     "descripcion_resultado"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "planificaciones_id"
    t.index ["planificaciones_id"], name: "index_resultados_de_aprendizajes_on_planificaciones_id", using: :btree
  end

  add_foreign_key "had_rdas", "programas"
  add_foreign_key "had_rdas", "resultados_de_aprendizajes"
end
