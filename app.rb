require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'boardcase'
require 'board'
require 'game'
require 'application'


app = Application.new

binding.pry
puts "end of file "