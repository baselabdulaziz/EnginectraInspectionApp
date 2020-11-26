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

ActiveRecord::Schema.define(version: 20201126015210) do

  create_table "customers", primary_key: "customer_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci" do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engineers", primary_key: "engineer_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci" do |t|
    t.string "email"
    t.string "password_digest"
    t.string "active_projects"
    t.string "old_projects"
    t.string "mainSeal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci" do |t|
    t.string "engineer_id"
    t.string "Project_number"
    t.string "Project_scope"
    t.string "Elect_name"
    t.string "Elect_email"
    t.string "Elect_address"
    t.string "fp_name"
    t.string "fp_email"
    t.string "fp_address"
    t.string "Inspec_name"
    t.string "Inspec_address"
    t.string "Fp_representative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
  end

end
