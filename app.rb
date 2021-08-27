require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'boardcase'
require 'game'
require 'application'
require 'show'

####### INTRO ##############
views = Show.new
views.intro
views.rules
####### GAME ###############
app = Application.new
app.perform
############################

binding.pry
puts "end of file "

