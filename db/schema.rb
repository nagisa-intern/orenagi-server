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

ActiveRecord::Schema.define(version: 20180901094132) do

  create_table "authors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.text "info", null: false
  end

  create_table "comic_author", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "comic_id", null: false
    t.bigint "author_id", null: false
    t.index ["author_id"], name: "index_comic_author_on_author_id"
    t.index ["comic_id"], name: "index_comic_author_on_comic_id"
  end

  create_table "comics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title", null: false
    t.text "summary", null: false
    t.string "linkURL", limit: 20
  end

  create_table "location_comics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "location_id", null: false
    t.bigint "comic_id", null: false
    t.index ["comic_id"], name: "index_location_comics_on_comic_id"
    t.index ["location_id"], name: "index_location_comics_on_location_id"
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
  end

  add_foreign_key "comic_author", "authors"
  add_foreign_key "comic_author", "comics"
  add_foreign_key "location_comics", "comics"
  add_foreign_key "location_comics", "locations"
end
