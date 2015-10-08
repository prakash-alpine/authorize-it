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

ActiveRecord::Schema.define(version: 20151005134337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "application_classes", force: :cascade do |t|
    t.string   "name",              null: false
    t.string   "description"
    t.integer  "parent_class_id"
    t.string   "parent_class_name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "application_classes", ["name"], name: "index_application_classes_on_name", unique: true, using: :btree

  create_table "application_objects", force: :cascade do |t|
    t.integer  "instance_id",          null: false
    t.integer  "parent_class_id"
    t.string   "parent_class_name"
    t.integer  "permissions_mask"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "application_scope_id"
    t.integer  "application_class_id"
    t.integer  "user_id"
  end

  add_index "application_objects", ["application_class_id"], name: "index_application_objects_on_application_class_id", using: :btree
  add_index "application_objects", ["application_scope_id"], name: "index_application_objects_on_application_scope_id", using: :btree
  add_index "application_objects", ["user_id"], name: "index_application_objects_on_user_id", using: :btree

  create_table "application_scopes", force: :cascade do |t|
    t.string   "name",              null: false
    t.integer  "parent_class_id"
    t.string   "parent_class_name"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "group_id"
  end

  add_index "application_scopes", ["group_id"], name: "index_application_scopes_on_group_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "groups_roles", id: false, force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "role_id",  null: false
  end

  add_index "groups_roles", ["group_id", "role_id"], name: "index_groups_roles_on_group_id_and_role_id", using: :btree
  add_index "groups_roles", ["role_id", "group_id"], name: "index_groups_roles_on_role_id_and_group_id", using: :btree

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "user_id",  null: false
  end

  add_index "groups_users", ["group_id", "user_id"], name: "index_groups_users_on_group_id_and_user_id", using: :btree
  add_index "groups_users", ["user_id", "group_id"], name: "index_groups_users_on_user_id_and_group_id", using: :btree

  create_table "operations", force: :cascade do |t|
    t.string   "name",                 null: false
    t.text     "description"
    t.integer  "sequence"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "application_class_id"
  end

  add_index "operations", ["application_class_id"], name: "index_operations_on_application_class_id", using: :btree

  create_table "permissions", force: :cascade do |t|
    t.integer  "permissions_mask",     null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "role_id"
    t.integer  "application_class_id"
  end

  add_index "permissions", ["application_class_id"], name: "index_permissions_on_application_class_id", using: :btree
  add_index "permissions", ["role_id"], name: "index_permissions_on_role_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "user_id", null: false
  end

  add_index "roles_users", ["role_id", "user_id"], name: "index_roles_users_on_role_id_and_user_id", using: :btree
  add_index "roles_users", ["user_id", "role_id"], name: "index_roles_users_on_user_id_and_role_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "title"
    t.string   "department"
    t.text     "notes"
    t.string   "password_digest"
    t.boolean  "admin_lte",              default: false
    t.datetime "deleted_at"
    t.string   "image_file_path"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "password_salt"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["first_name", "last_name"], name: "index_users_on_first_name_and_last_name", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "application_objects", "application_classes"
  add_foreign_key "application_objects", "application_scopes"
  add_foreign_key "application_objects", "users"
  add_foreign_key "application_scopes", "groups"
  add_foreign_key "operations", "application_classes"
  add_foreign_key "permissions", "application_classes"
  add_foreign_key "permissions", "roles"
end
