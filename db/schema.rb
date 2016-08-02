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

ActiveRecord::Schema.define(version: 20160801203405) do

  create_table "matches", force: true do |t|
    t.string   "match_name"
    t.string   "winner_name"
    t.string   "winner_id"
    t.string   "winner_picks"
    t.string   "loser_name"
    t.string   "loser_id"
    t.string   "loser_picks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matchings", force: true do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matchings", ["match_id"], name: "index_matchings_on_match_id"
  add_index "matchings", ["player_id"], name: "index_matchings_on_player_id"

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "steamid"
    t.integer  "elo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
