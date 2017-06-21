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

ActiveRecord::Schema.define(version: 20170621061234) do

  create_table "clientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nomeutilizador", limit: 32, null: false
    t.string "email", limit: 100, null: false
    t.string "nome", limit: 50, null: false
    t.string "passe", limit: 20, null: false
  end

  create_table "clientes_praias", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "cliente_id"
    t.bigint "praia_id"
    t.index ["cliente_id"], name: "index_clientes_praias_on_cliente_id"
    t.index ["praia_id"], name: "index_clientes_praias_on_praia_id"
  end

  create_table "humidades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "leitura_id"
    t.float "valor", limit: 24
    t.index ["leitura_id"], name: "index_humidades_on_leitura_id"
  end

  create_table "leituras", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "praia_id"
    t.timestamp "data"
    t.index ["praia_id"], name: "index_leituras_on_praia_id"
  end

  create_table "luminosidades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "leitura_id"
    t.float "valor", limit: 24
    t.index ["leitura_id"], name: "index_luminosidades_on_leitura_id"
  end

  create_table "praia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 32, null: false
    t.string "location", limit: 32, null: false
  end

  create_table "pressaos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "leitura_id"
    t.float "valor", limit: 24
    t.index ["leitura_id"], name: "index_pressaos_on_leitura_id"
  end

  create_table "temperaturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "leitura_id"
    t.float "valor", limit: 24
    t.index ["leitura_id"], name: "index_temperaturas_on_leitura_id"
  end

end
