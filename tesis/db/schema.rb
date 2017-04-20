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

ActiveRecord::Schema.define(version: 20170420013823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Clases_Evaluacions", id: false, force: :cascade do |t|
    t.integer "clase_id",      null: false
    t.integer "evaluacion_id", null: false
  end

  create_table "Clases_Usuarios", id: false, force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "clase_id",   null: false
  end

  create_table "Contenidos_Tipo_Evaluacions", id: false, force: :cascade do |t|
    t.integer "contenido_id",       null: false
    t.integer "tipo_evaluacion_id", null: false
  end

  create_table "clases", force: :cascade do |t|
    t.integer  "clase_id"
    t.string   "nombre_clase"
    t.text     "descripcion_clase"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "contenidos", force: :cascade do |t|
    t.integer  "contenido_id"
    t.text     "descripcion_contenido"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "evaluacion_id"
  end

  create_table "evaluacions", force: :cascade do |t|
    t.integer  "id_evaluacion"
    t.date     "fecha"
    t.time     "hora"
    t.boolean  "repetir"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "objetivo_aprendizajes", force: :cascade do |t|
    t.integer  "objetivo_aprendizaje_id"
    t.text     "descripcion_oa"
    t.text     "topico"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "evaluacion_id"
  end

  create_table "pregunta", force: :cascade do |t|
    t.integer  "pregunta_id"
    t.string   "contenido"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "resultados", force: :cascade do |t|
    t.integer  "resultado_id"
    t.integer  "puntaje_max"
    t.string   "punteje_obtenido"
    t.string   "integer"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "objetivo_aprendizaje_id"
    t.integer  "evaluacion_id"
  end

  create_table "tipo_evaluacions", force: :cascade do |t|
    t.integer  "evaluacion_id"
    t.text     "descripcion_tipo_evaluacion"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "rol"
    t.string   "nombre"
    t.string   "rut"
    t.text     "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
