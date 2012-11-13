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

ActiveRecord::Schema.define(:version => 20121113230647) do

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "initiator_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "project_members", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "project_role_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "project_resources", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "project_id"
    t.boolean  "third_party"
    t.string   "identifier"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "project_role_resources", :force => true do |t|
    t.integer  "project_role_id"
    t.integer  "project_resource_id"
    t.boolean  "able_to_read",        :default => false
    t.boolean  "able_to_create",      :default => false
    t.boolean  "able_to_delete",      :default => false
    t.boolean  "able_to_edit",        :default => false
    t.boolean  "able_to_manage",      :default => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "project_roles", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "organization_id"
    t.integer  "initiator_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "organization_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
