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

ActiveRecord::Schema.define(:version => 20121124153955) do

  create_table "bloggers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "full_name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blogger_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "bloggers", ["blogger_id"], :name => "index_bloggers_on_blogger_id"
  add_index "bloggers", ["confirmation_token"], :name => "index_bloggers_on_confirmation_token", :unique => true
  add_index "bloggers", ["email"], :name => "index_bloggers_on_email", :unique => true
  add_index "bloggers", ["reset_password_token"], :name => "index_bloggers_on_reset_password_token", :unique => true

  create_table "comments", :force => true do |t|
    t.string   "visitor"
    t.text     "message"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "blogger_id"
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "likes", :force => true do |t|
    t.integer  "blogger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comment_id"
  end

  add_index "likes", ["blogger_id"], :name => "index_likes_on_blogger_id"
  add_index "likes", ["comment_id"], :name => "index_likes_on_comment_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blogger_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
