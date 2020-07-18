require 'pry'
require 'httparty'

class API
    URL = "https://poetrydb.org/author/"

    # def get_poems

    #     response = HTTParty.get(URL + ",linecount/;12").to_a
    #     response.each do |poem_hash|
    #         Poem.new(title: poem_hash['title'], author: poem_hash['author'], lines: poem_hash['lines'])
    #     end
    


    def get_poems(name)

        response = HTTParty.get(URL + ",linecount/#{name};14/lines,title,author").to_a
        response.each do |poem_hash|
            Poem.new(title: poem_hash['title'], author: poem_hash['author'], lines: poem_hash['lines'])
        end
    

        # https://poetrydb.org/author,linecount/poe;14/lines,title,author
        

        
        #Poem.new(@lines)

    
        # (@lines)





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
           

    end

    #Poem.new(@lines,@author,@name)
    #,linecount/;12/author,title,lines"
    end
