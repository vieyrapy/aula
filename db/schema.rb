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

ActiveRecord::Schema.define(version: 20171119010217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asignaraulas", force: :cascade do |t|
    t.integer "aula_id"
    t.integer "cursoporcarrera_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "diadelasemana_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.string "nombre"
    t.string "bloque"
    t.integer "capacidad"
    t.string "equipamiento"
    t.boolean "ocupado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carreras", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursoporcarreras", force: :cascade do |t|
    t.integer "facultad_id"
    t.integer "carrera_id"
    t.integer "curso_id"
    t.string "semestre"
    t.integer "cantidadalumno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diadelasemanas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facultades", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "asignaraulas", "aulas"
  add_foreign_key "asignaraulas", "cursoporcarreras"
  add_foreign_key "asignaraulas", "diadelasemanas"
  add_foreign_key "cursoporcarreras", "carreras"
  add_foreign_key "cursoporcarreras", "cursos"
  add_foreign_key "cursoporcarreras", "facultades"
end
