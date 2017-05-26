require 'bundler/setup'
require 'active_record'
require 'pry'

Bundler.require

db = File.join(File.expand_path(File.dirname(__FILE__)), "../db/test.sqlite3")

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3' ,
  :database => db
)
