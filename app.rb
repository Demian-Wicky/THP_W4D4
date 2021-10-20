require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'game'
require 'boardcase'
require 'board'
require 'show'

system 'clear'

game = Game.new.perform
