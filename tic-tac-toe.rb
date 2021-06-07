
puts " _________  _____   ______        _________     _        ______        _________    ___   ________  "
puts "|  _   _  ||_   _|.' ___  |      |  _   _  |   / \\     .' ___  |      |  _   _  | .'   \`.|_   __  | "
puts "|_/ | | \\_|  | | / .'   \\_|______|_/ | | \\_|  / _ \\   / .'   \\_|______|_/ | | \\_|/  .-.  \\ | |_ \\_| "
puts "    | |      | | | |      |______|   | |     / ___ \\  | |      |______|   | |    | |   | | |  _| _  "
puts "   _| |_    _| |_\\ \`.___.'\\         _| |_  _/ /   \\ \\_\\ \`.___.'\\         _| |_   \\  `-'  /_| |__/ | "
puts "  |_____|  |_____|\`.____ .'        |_____||____| |____|\`.____ .'        |_____|   \`.___.'|________| "
puts""
puts ""

require_relative "display.rb"
require_relative "player.rb"
    
class Tictactoe
    def initialize 
        puts "Enter your name: "
        user = gets.chomp
        puts "Enter a symbol to represent yorself: "
        symbol = gets.chomp
        firs_player = Player.new(user,symbol)
        board = Grid.new
        board.print_grid
        loop do 
            board.input_to_grid(firs_player)
            board.computer_input(firs_player)
            board.winner
            break if board.winner == true
        end
       
    end

end

Tictactoe.new