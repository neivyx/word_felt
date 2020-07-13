require 'colorize'


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
        line
        line 
        puts "|| WordFelt: Anthology ||".blue
        line
        puts "  >> Poetry Classics <<".blue
        line
        puts "     -by. neivy".blue
        line
        line
    end

    def ask
        sleep(1)
        line
        puts "Enter 'yes' or 'no' to continue."
        line
    end

    def start
        slee(1!)
        line
        puts "Would you like to retrieve a random poem, from the archives?"
       
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
        puts "farewell my friend.".red
        puts "\tfin.".red
        line
    end

    def print_poem
        puts API.new.get_poems
    end

    def reprint
        sleep(5)
        puts "Would you like generate a new poem?"
        ask
        print ""
        user_input = gets.strip.to_s.downcase.green
        if user_input == "yes".green
            line
            print_poem.light_blue
            line
            reprint
        else user_input == "no".red
            line
            farewell
            line

        end
        
        
    end

    def validation
        puts "Whoops. Give it another try!".red
    end

    def line
     puts ""
    end

end