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

ActiveRecord::Schema.define(version: 20141125122642) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "authors"
    t.string   "mrp"
    t.integer  "university_id"
    t.integer  "department_id"
    t.integer  "course_id"
    t.integer  "semester_id"
    t.integer  "subject_id"
    t.integer  "publication_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.string   "city"
    t.string   "zipcode"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges_departments", id: false, force: true do |t|
    t.integer "college_id"
    t.integer "department_id"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_departments", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "department_id"
  end

  create_table "courses_semesters", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "semester_id"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "file"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.text     "description"
    t.string   "price"
    t.integer  "quality"
    t.integer  "markings"
    t.boolean  "torn",        default: false
    t.boolean  "spam",        default: false
    t.boolean  "deleted",     default: false
    t.boolean  "sold",        default: false
    t.integer  "user_id"
    t.integer  "college_id"
    t.integer  "book_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "status",     default: 0
    t.integer  "listing_id"
    t.integer  "college_id"
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "handler_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters_subjects", id: false, force: true do |t|
    t.integer "semester_id"
    t.integer "subject_id"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "mobile"
    t.integer  "role",          default: 0
    t.integer  "college_id"
    t.integer  "department_id"
    t.integer  "semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
