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
        puts "   >> Poetry Classics <<"
        line
    end

    # def ask
    #     line
    #     puts "Would you like to retrieve a random poem, from the archives?"
    #     puts ""
    #     line
    # end

    def ask
        line
        puts "Would you like to retrieve a random poem, from the archives?"
        print ""
        line
        puts "Enter 'yes' or 'no' to continue."
        user_input = gets.chomp.to_s.downcase
        if user_input == 'yes'
            line
            print_poem
            line
        elsif user_input == "no"
            line
           puts "farewell my friend."
           puts "\tfin."
            line
        else
            line
            validation
            line
        end

    end

    def print_poem
        puts "poem printed"
    end

    def reprint
        puts "Would you like generate a new poem?"
        print ""
        user_input = gets.strip.to_s.downcase
        if user_input == "y"
            print_poem
            reprint
        elsif user_input == "n"
        else

        end
        
        
    end

    def validation
        puts "Whoops. Give it another try!"
    end

    def line
     puts ""
    end

end