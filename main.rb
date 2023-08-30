require_relative "text.rb"
require_relative "code_maker.rb"
require_relative "code_breaker.rb"

class MasterMind
    attr_accessor :game_mode

    def initialize
        self.start_menu
        self.game_loop(@game_mode)
        self.play_again
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
        Text.play_again
        answer = gets.chomp.upcase
        if answer == "Y"
            MasterMind.new
        else 
            Text.greetings
        end
    end
end

MasterMind.new

