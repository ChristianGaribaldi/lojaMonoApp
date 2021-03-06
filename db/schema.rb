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

ActiveRecord::Schema.define(version: 20160928182123) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "rua"
    t.integer  "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
  end

  create_table "estados", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sigla"
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.float    "precoUnitario"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "qtd_estoque"
  end

  create_table "vendas", force: :cascade do |t|
    t.integer  "produto_id"
    t.integer  "cliente_id"
    t.integer  "quantidade"
    t.float    "valorVenda"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "tipo_pgt"
    t.string   "num_cartao"
    t.string   "validade_cartao"
    t.string   "codigo_cartao"
    t.float    "desconto"
  end

end
