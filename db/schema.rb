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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121114225813) do

  create_table "organization_roles", :force => true do |t|
    t.string   "name"
    t.string   "identifier"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.integer  "initiator_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "project_resource_roles", :force => true do |t|
    t.integer  "project_resource_id"
    t.boolean  "able_to_read"
    t.boolean  "able_to_edit"
    t.boolean  "able_to_create"
    t.boolean  "able_to_delete"
    t.boolean  "able_to_manage"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "project_resource_roles_project_roles", :id => false, :force => true do |t|
    t.integer "project_resource_role_id"
    t.integer "project_role_id"
  end

  add_index "project_resource_roles_project_roles", ["project_resource_role_id", "project_role_id"], :name => "project_resource_roles_project_roles_index", :unique => true

  create_table "project_resources", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "project_roles", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "project_roles_users", :id => false, :force => true do |t|
    t.integer "project_role_id"
    t.integer "user_id"
  end

  add_index "project_roles_users", ["project_role_id", "user_id"], :name => "project_roles_users_index", :unique => true

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.integer  "initiator_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "projects_users", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "user_id"
  end

  add_index "projects_users", ["project_id", "user_id"], :name => "projects_users_index", :unique => true

  create_table "res_apps", :force => true do |t|
    t.string   "name"
    t.string   "identifier"
    t.boolean  "third_party"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "res_calendars", :force => true do |t|
    t.integer  "project_id"
    t.datetime "time_at"
    t.integer  "user_id"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "res_comments", :force => true do |t|
    t.integer  "res_id"
    t.string   "res_identifier"
    t.text     "message"
    t.integer  "reply_to"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "res_todo_lists", :force => true do |t|
    t.integer  "project_id"
    t.integer  "due_time"
    t.string   "title"
    t.text     "message"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "organization_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "organization_role_id"
  end

end
