require_relative "texts.rb"

class MasterMind
    attr_accessor :text

    def initialize
        self.start_menu
    end

    def start_menu
        @text = Text.new
        @text.clear
        @text.menu    
    end
    
end

MasterMind.new