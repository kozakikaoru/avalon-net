# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_27_094642) do

  create_table "organizers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "名称"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "results", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "tournament_id", null: false
    t.integer "rank", null: false, comment: "順位"
    t.string "player_ign", comment: "名称"
    t.integer "kill", default: 0, null: false, comment: "キル数"
    t.integer "damage", default: 0, null: false, comment: "ダメージ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tournament_id"], name: "index_results_on_tournament_id"
  end

  create_table "tournaments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "名称"
    t.integer "game_type", limit: 1, null: false, comment: "ゲームタイプ"
    t.integer "prize", default: 1500, null: false, comment: "賞金"
    t.date "events_on", null: false, comment: "開催日"
    t.time "events_time", null: false, comment: "開催時間"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "results", "tournaments"
end
