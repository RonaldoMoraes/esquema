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

ActiveRecord::Schema.define(version: 20141126132809) do

  create_table "answers", force: true do |t|
    t.text     "texto"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"

  create_table "lists", force: true do |t|
    t.string   "nome"
    t.text     "assunto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "numero"
    t.string   "pergunta"
    t.integer  "list_id"
    t.boolean  "prova"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["list_id"], name: "index_questions_on_list_id"

end
