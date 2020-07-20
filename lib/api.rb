require 'pry'
require 'httparty'

class API
    URL = "https://poetrydb.org/author"

    def get_poems

        response = HTTParty.get(URL + ",linecount/;12").to_a
        response.each do |poem_hash|
            Poem.new(poem_hash['title'],poem_hash['author'],poem_hash['lines'])
        end
# binding.pry
    end

    BASE_URL = "https://poetrydb.org/author"

    def get_author_poems(name,i)

        response = HTTParty.get(BASE_URL + ",linecount/#{name};#{i}/lines,title,author").to_a
        response.each do |poem_hash|
            Author.new(poem_hash['title'],poem_hash['author'],poem_hash['lines'])
        end
# binding.pry
    end
    




    #below is for author input
    
    # URL = "https://poetrydb.org/author"

    # def get_poems(name)

    #     response = HTTParty.get(URL + ",linecount/#{name};14/lines,title,author").to_s
    #     response.map do |poem_hash|
    #         Poem.new(title: poem_hash['title'], author: poem_hash['author'], lines: poem_hash['lines'])
    #     end

    # end

    # https://poetrydb.org/author,linecount/poe;14/lines,title,author
    
end
  
        #https://poetrydb.org/author,linecount/;12"


    #below is for random poem

        # URL = "https://poetrydb.org/author"

        # def get_poems

        #     response = HTTParty.get(URL + ",linecount/;12").to_a
        #     response.each do |poem_hash|
        #         Poem.new(title: poem_hash['title'], author: poem_hash['author'], lines: poem_hash['lines'])
        #     end
    
        # end
        



          # response = HTTParty.get('https://poetrydb.org/random/1')
        # response.select {|i| puts "quoteText: 
        # #{i['lines']}, quoteAuthor:#{i['author']}\n\n, quoteTitle: #{i['title']}\n\n"}
        # binary.pry


        #list of poem by this author
        #list of poem in general by type
        #random poems from author list 

        # 1. List all authors
        # 2. type author , print poem (if not available, mention)
        # 3. random poem

        # one of the above.


        # https://poetrydb.org/author,linecount/poe;14/lines,title,author
        
        #let user enter, author. CSI
           

    # end

    #Poem.new(@lines,@author,@name)
    # #,linecount/;12/author,title,lines"
    # end


    # https://poetrydb.org/author

          # https://poetrydb.org/author,linecount/poe;14/lines,title,author
        
        #   https://poetrydb.org/random/3/author,title,
        # https://poetrydb.org/random/3
        
        #Poem.new(@lines)

    
        # (@lines)
