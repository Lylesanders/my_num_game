require_relative "num_game_function.rb"	

game =Game.new
number = game.target_number

puts "Target number was #{number}"

guess_array=[1,2,3,4,5]
puts"enter a number between 1 and 5"
guess = gets.chomp
puts game.duplicate_guess?(guess_array,guess)