require_relative "texts.rb"
require_relative "logic.rb"

class MasterMind
    attr_accessor :game_mode

    def initialize
        self.start_menu
        self.game_loop(@game_mode)
        
    end

    private

    def start_menu
        Text.clear
        Text.menu
        @game_mode = gets.to_i
    end

    def game_loop(game_mode)
        if game_mode == 1
            CodeMaker.new
        elsif game_mode == 2
            CodeBreaker.new
        end
    end
    
    def play_again

    end
end

MasterMind.new

