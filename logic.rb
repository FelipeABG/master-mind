require_relative "texts.rb"

class CodeBreaker 
    attr_accessor :code
    def initialize
        Text.clear
        self.game
    end

    private

    def game
        @code = self.generate_code

        while true do
            print "Guess the code (Put in 4 numbers): "
            answer = gets.chomp
            self.verify_answer(answer)
        end
    end


    def generate_code
        code = []
        4.times do
            code.push(rand(1..6))
        end
        return code
    end

    def verify_answer(answer)
        formated_answer = answer.chars.map do |char|
            char.to_i
        end


    end

end



class CodeMaker

    def initialize

    end
end

