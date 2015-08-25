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

ActiveRecord::Schema.define(version: 20150825134241) do

  create_table "pcs", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "encargado"
    t.string   "area"
    t.string   "codigoContable"
    t.string   "factura"
    t.date     "fechaCompra"
    t.integer  "garantia"
    t.string   "marca"
    t.string   "so"
    t.string   "serialSo"
    t.string   "office"
    t.string   "serialOffice"
    t.string   "procesador"
    t.integer  "velocidad"
    t.integer  "ram"
    t.integer  "discoDuro"
    t.boolean  "antivirus"
    t.boolean  "cdrom"
    t.boolean  "d312"
    t.boolean  "lectorMemorias"
    t.boolean  "internet"
    t.date     "ultimoMantenimiento"
    t.integer  "frecuencia"
    t.string   "usuarioComputador"
    t.string   "claveComputador"
    t.string   "drivers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
