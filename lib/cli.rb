class CLI

    attr_accessor :input
    attr_reader :api

    def initialize
        @input = ""
        @api = API.new
    end

    def call
        greeting
        start

    end

    def greeting
        line 
        puts "|| WordFelt: Anthology || "
        line
        puts "  >> Poetry Classics <<"
        line
        puts "     -by. neivy"
    end

    def ask
        line
        puts "Enter 'yes' or 'no' to continue."
        line
    end

    def start
        line
        puts "Would you like to retrieve a random poem, from the archives?"
        print ""
        line
        ask
        user_input = gets.chomp.to_s.downcase
        if user_input == 'yes'
            line
            print_poem
            line
            reprint
        elsif user_input == "no"
            line
          farewell
            line
        else
            line
            validation
            line
        end

    end

    def farewell
        line
        puts "farewell my friend."
        puts "\tfin."
        line
    end

    def print_poem
        puts API.new.get_poems
    end

    def reprint
        puts "Would you like generate a new poem?"
        ask
        print ""
        user_input = gets.strip.to_s.downcase
        if user_input == "yes"
            line
            print_poem
            line
            reprint
        else user_input == "no"
            line
            farewell
            line

        end
        
        
    end

    def validation
        puts "Whoops. Give it another try!"
    end

    def line
     puts ""
    end

end