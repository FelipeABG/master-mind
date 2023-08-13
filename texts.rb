require "os"

class Text

    def menu
        puts "Choose the game mode:"
        puts "Press '1' to be the code MAKER."
        puts "Press '2' to be the code BREAKER."
        x = gets
        p x.class
    end

    def clear
        system(OS.windows? ? "cls" : "clear")
    end 



end
