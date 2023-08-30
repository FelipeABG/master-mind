require 'os'

class Text

    def self.clear
        system(OS.windows? ? "cls" : "clear")
    end 

    def self.menu
        puts "Welcome to Master Mind!"
        puts "Choose the game mode:"
        puts "Press '1' to be the code MAKER."
        puts "Press '2' to be the code BREAKER."        
    end

    def self.code_breaker_win_end
        puts "You won!"
    end

    def self.play_again
        puts "Do you want to play again? (Y/N)"
    end

    def self.greetings
        puts "Thank you for playing!"
    end

    def self.code_breaker_counters(guess, full_correct_guess, half_correct_guess, counter)
        puts "You have #{counter} guesses left."
        puts "You guess was: #{guess}."
        puts "Correct position: #{full_correct_guess} number(s)."
        puts "Incorrect position: #{half_correct_guess} number(s)."
        puts "------------------------------------"
    end
end 
