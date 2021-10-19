require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'boardcase'
require 'board'



game = Game.new.perform


binding.pry
puts "end of file "
