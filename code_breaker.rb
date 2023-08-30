require_relative "text.rb"

class CodeBreaker 
    attr_accessor :code, :full_correct_guess, :half_correct_guess

    def initialize
        Text.clear
        self.game
    end

    private

    def game
        @code = self.generate_code
        counter = 12
        while true do
            print "Guess the code (Put in 4 numbers): "
            answer = gets.chomp
            break if self.verify_answer(answer) || counter == 0
            Text.code_breaker_counters(answer, @full_correct_guess, @half_correct_guess, counter)
            counter -= 1
        end
    end

    def generate_code
        code = []
        counter = 0
        
        while counter < 4
            number = rand(1..6)
            code.include?(number) ? counter -= 1: code.push(number); counter += 1
        end
        return code
    end
    
    def verify_answer(answer)
        formated_answer = answer.split('').map {|number| number.to_i}
        @full_correct_guess = 0
        @half_correct_guess = 0
        
        if formated_answer == @code
            Text.code_breaker_win_end
            Text.greetings
            return true
        else 
            formated_answer.each do |number|
                if @code.include?(number)
                    @code.index(number) == formated_answer.index(number) ? @full_correct_guess += 1 : @half_correct_guess += 1
                end
            end
        end
        return false
    end


end
