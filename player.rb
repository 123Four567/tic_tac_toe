class Player
	attr_accessor :symbol
	def initialize(username,symbol)
		@username = username
		@symbol = symbol
	end

	def symbol
		@symbol
	end

	def pc_input
		@pc_symbol = "*"
	end	
end
