require_relative "player.rb"

class Grid
	attr_accessor :tiles
	def initialize
		@tiles = [1,2,3,4,5,6,7,8,9]

		@win_states = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], 
				[1,4,7], [2,5,8], [0,4,8], [6,4,2]]
	end

	def print_grid
		puts "#{@tiles[0]} | " "#{@tiles[1]} | "  "#{@tiles[2]}"
		puts "--------------"
		puts "#{@tiles[3]} | " "#{@tiles[4]} | "  "#{@tiles[5]}"
		puts "--------------"
		puts "#{@tiles[6]} | " "#{@tiles[7]} | "  "#{@tiles[8]}"
		puts "--------------"
	end

	def input_to_grid(player)
		puts "Choose a position (1 to 9)"
		choice = gets.chomp.to_i - 1

		@tiles[choice] = player.symbol
		print_grid
	end

	def computer_input(player)
		puts "Waiting for the computer to choose..."
		sleep(1)
		input = rand(0..8)
		@tiles[input] = player.pc_input
		print_grid
	end

	def tiles
		@tiles
	end

	def winner
		@win_states.each do |states|
			if @tiles.intersection(states) == []
				puts "There is a winner"
				return true
			end
			
		end
	end

end
