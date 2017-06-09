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

ActiveRecord::Schema.define(version: 20170608175527) do

  create_table "evaluations", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "prescription"
    t.integer  "alcohol_use"
    t.boolean  "drug_use"
    t.string   "feeling"
    t.string   "appointment_reason"
    t.boolean  "thoughts_suicide_harm"
    t.boolean  "attempted_suicide"
    t.string   "unsafe_sex"
    t.boolean  "violent_behaviour"
    t.boolean  "domestic_abuse"
    t.boolean  "criminal_activity"
    t.string   "diagnosed_condition"
    t.string   "hospital_admissions"
    t.string   "hallucinations"
    t.string   "disability"
    t.string   "availability"
    t.string   "insurance"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.boolean "triage"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "gender"
    t.string   "telephone"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.date     "date_of_birth"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
