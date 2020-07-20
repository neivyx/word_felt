require 'colorize'


class CLI

    attr_accessor :input
    attr_reader :api

    def initialize
        @input = ""
        @api = API.new
    end

    def call #start/call/run/launch
        greeting
        menu
        # get_input
        # start

    end

    def greeting #first greeting 
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



    def menu
        # input = TTY::Prompt.new
        # user_input = input.select("Print a random poem or Would like to see a list of authors?")
        
        prompt = TTY::Prompt.new
        
        choices = [
            {name: 'Print a random poem', value: 1},
            {name: 'Would like to see a list of authors?', value: 2},
            {name: 'Exit', value: 3}
                ]
                user_input = prompt.select("Choose an option below", choices)
        
             case user_input
        
             when 1
                line
                print_poem
                line
                menu
        
             when 2 
                line
                list_authors
                line
                menu
             when 3
                line
                farewell
                line
             end
    end
        
   
    def list_authors
        
        input = TTY::Prompt.new
            user_input = input.select("Choose a author below to print a random poem", %w(William-Shakespeare Edgar-Allan-Poe Oscar-Wilde Emily-Dickinson William-Blake Exit))
        case user_input
            when "William-Shakespeare"
            # random = rand(13..30)
            @api.get_author_poems("shakespeare","14")
            print_author_poem
            when "Edgar-Allan-Poe"
            @api.get_author_poems("poe","16")
            print_author_poem
            when "Oscar-Wilde"
            @api.get_author_poems("wilde","25")
            print_author_poem
            when "Emily-Dickinson"
            @api.get_author_poems("dickinson","15")
            print_author_poem
            when  "William-Blake"
            @api.get_author_poems("blake","16")
            print_author_poem
            when "Exit"
            menu
        
        end

    end


    def farewell #end / no response
        line
        puts "farewell my friend.".red
        puts "\tfin.".red
        line
    end

    def print_poem #api call
        API.new.get_poems
        # puts Poem.all.sample.title
        # puts Poem.all.sample.author
        puts Poem.all.sample.lines
    
    end

    # def get_input
    #     puts "type the name of a author"
    # author_input = gets.chomp
    # @api.get_poems("poe")
    # Poem.all.sample.author
    # binding.pry
    # end

    def print_author_poem
            # Author.all.each do |poem_hash|
            # puts "#{poem_hash.title} #{poem_hash.author} #{poem_hash.lines}"
             poem_data = []
            #  print poem_data.first
            
            Author.all.each do |poem_hash|
                poem_data << "#{poem_hash.title} #{poem_hash.author} #{poem_hash.lines}"
            end
            binding.pry
            puts poem_data[get_input]

            # binding.pry

            #get_input = ask.("how many poem would you like to see", 1..10

            
            
    # end

    #poem_data = Author.all
    #poem_data.first
end

    def reprint
        sleep(2)
        line
        puts "Would you like generate a new poem?"
        ask
        print ""
        user_input = gets.strip.to_s.downcase
        if user_input == "yes"
            bar
            line
            print_poem
            line
            bar
            reprint
        else user_input == "no"
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

    def bar
        line
        print "=".green * 40
        line
     end

end


