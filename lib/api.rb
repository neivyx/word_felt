require 'pry'
require 'httparty'

class API
    URL = "https://poetrydb.org/author"

    def get_poems

        response = HTTParty.get(URL + ",linecount/;12/author,title,lines").to_a
        (0..11).each { |i| puts response[rand(154)]['lines'][i].split"#" }


        Poem.new(@lines,@author,@name)
        
           
        # end
    end



    end
#ODD CODE

    # BASE_URL = "https://poetrydb.org/random/1"
    # def get_poems

    #     response = HTTParty.get(BASE_URL)
    #     response.each do |text|
    #         Poem.new(text["author"], text["title"], text["lines"])

           
    #     end
    # end

# ===========

    # response = HTTParty.get('https://poetrydb.org/random/1')
    # response.select {|i| puts "quoteText: 
    #     #{i['lines']}, quoteAuthor:#{i['author']}\n\n, quoteTitle: #{i['title']}\n\n"}

    #     final_poem = response.select do |i| puts "quoteText: 
    #         #{i['lines']}, quoteAuthor:#{i['author']}, quoteTitle: #{i['title']}"

    #     end

            

    #     def get_a_quote
    #         url = "https://quote-garden.herokuapp.com/api/v2/quotes/random"
    #        quote = HTTParty.get(url)
    #        Quotes.new(quote["quote"]["quoteText"], quote["quote"]["quoteAuthor"])


    
    #transfer into array?
    #interate 


    # def get_poems
    #     response = HTTParty.get(URL + ",linecount/author,title,lines")
    #          puts response[rand(154)]["title"][i]
    # end

    # def get_longer_poems
    #     response = HTTParty.get(URL + ",linecount/;14/author,title,lines").to_a
    #     (0..13).each { |i| puts response[rand(154)]['lines'][i] }
    # end

    # def get_shorter_poems
    #     response = HTTParty.get(URL + ",linecount/;11/author,title,lines").to_a
    #     (0..10).each { |i| puts response[rand(154)]['lines'][i] }

    # end


    


# end

# https://poetrydb.org/random/3/title
# https://poetrydb.org/random/3/lines

# author = HTTParty.get('https://poetrydb.org/author')


# # https://poetrydb.org/author,linecount/Shakespeare;14/lines

# https://poetrydb.org/author,linecount/Poe;14/lines

# https://poetrydb.org/author,linecount/Poe;14/lines

# https://poetrydb.org/random,linecount;10/lines
# https://poetrydb.org/random/lines
# https://poetrydb.org/random/

# https://poetrydb.org/author/Poe/all

# https://poetrydb.org/author/all/author,title,lines

# https://poetrydb.org/author/Poe/author,title,lines

# https://poetrydb.org/author,linecount/Poe;14/author,title,lines

# https://poetrydb.org/author,linecount/;16/author,title,lines #shorter

# https://poetrydb.org/author,linecount/;11/author,title,lines

# https://poetrydb.org/author,linecount/;21/author,title,lines

# https://poetrydb.org/author,title,linecount

# def get_edgar_allan_poe
#     url = "https://poetrydb.org/author"
#     response = HTTParty.get(url).to_a
#         (0..10).each { |i| puts response[rand(154)]['lines'][i] }
# end

# /<input field>/<search term>[;<search term>][..][:<search type>][/<output field>][,<output field>][..][.<format>]


# Nadav 
# code 
# -- response.select {|i| puts "quoteText: #{i[‘lines’]}\n\n, quoteAuthor:#{i[‘author’]}\n\n, quoteTitle: #{i[‘title’]}\n\n"}


# response = HTTParty.get('https://poetrydb.org/random/1')
# response.select {|i| puts "quoteText: 
#     #{i['lines']}, quoteAuthor:#{i['author']}\n\n, quoteTitle: #{i['title']}\n\n"}