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
        API.new.get_poems
        menu
    

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



    def menu
      
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
             user_input = input.select("Choose a author below to print a random poem", %w(William-Shakespeare Edgar-Allan-Poe Walt-Whitman Emily-Dickinson William-Blake Exit))
        case user_input

            when "William-Shakespeare"
                line_count = rand(14..16)
                @api.get_author_poems("shakespeare","#{line_count}")
                print_author_poem
                # binding.pry
            when "Edgar-Allan-Poe"
                line_count = rand(23..24)
                @api.get_author_poems("poe","#{line_count}")
                print_author_poem
            when "Walt-Whitman"
                line_count = rand(14..16)
                @api.get_author_poems("whitman","#{line_count}")
                print_author_poem
            when "Emily-Dickinson"
                line_count = rand(4..6)
                @api.get_author_poems("dickinson","#{line_count}")
                print_author_poem
            when  "William-Blake"
                line_count = rand(11..12)
                @api.get_author_poems("blake","#{line_count}")
                print_author_poem
            when "Exit"
                menu
      
        end
    end



    def farewell
        line
        puts "farewell my friend.".red
        puts "\tfin.".red
        line
    end

    def print_poem
        # API.new.get_poems
        # puts Poem.all.sample.title
        # puts Poem.all.sample.author
        # puts Poem.all.sample.lines
        rand_poem = Poem.all.sample
        puts "\n #{rand_poem.title.red} by:#{rand_poem.author.light_blue}\n\n #{rand_poem.lines}"
        # binding.pry

    
    end

   

    def print_author_poem
        # puts Author.all.sample.lines
        # Author.all.each do |poem_hash|
        # puts "\n#{poem_hash.title.red} by:#{poem_hash.author.light_blue}\n\n #{poem_hash.lines}"
        rand_author_poem = Author.all.sample
        puts "\n #{rand_author_poem.title.red} by:#{rand_author_poem.author.light_blue}\n\n #{rand_author_poem.lines}"
        Author.clear
            line
        # end
# binding.pry
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


#Break Down
#============

# 1. Print a random Poem
#     print_poem
# 2. Would like to see a list of authors?
#         1. William Shakespeare = ("shakespeare") <--- print poem by Poet/Author
#         2. Edgar Allan Poe = ("poe")
#         3. Oscar Wilde = ("wilde")
#         4. Emily Dickinson = ("dickinson")
#         5. Mark Twain = ("twain")
# 3. Exit

#=============