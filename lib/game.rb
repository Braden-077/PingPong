# frozen_string_literal: true

require_relative 'ping_pong'

pingpong = PingPong.new
puts "Please enter a number to begin!"
x = gets.to_i
puts "You've selected #{x}"
puts "Let's get started!"
puts pingpong.play(x)