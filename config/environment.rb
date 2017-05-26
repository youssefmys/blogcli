require 'bundler/setup'
require 'active_record'
require 'pry'

Bundler.require





ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3' ,
  :database => 'db/test.sqlite3'
)
