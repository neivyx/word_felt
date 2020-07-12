require 'pry'
require 'httparty'

class API
    puts "hello2"

    URL = "https://poetrydb.org/author"

    def get_poems
        response = HTTParty.get(URL + ",linecount/;16/author,title,lines").to_a
            (0..15).each { |i| puts response[rand(154)]['lines'][i] }
    end

    def get_longer_poems
        response = HTTParty.get(URL + ",linecount/;21/author,title,lines").to_a
        (0..20).each { |i| puts response[rand(154)]['lines'][i] }
    end

    def get_shorter_poems
        response = HTTParty.get(URL + ",linecount/;11/author,title,lines").to_a
        (0..10).each { |i| puts response[rand(154)]['lines'][i] }

    end


end


# author = HTTParty.get('https://poetrydb.org/author')


# # https://poetrydb.org/author,linecount/Shakespeare;14/lines

# https://poetrydb.org/author,linecount/Poe;14/lines

# https://poetrydb.org/author,linecount/Poe;14/lines

# https://poetrydb.org/author/Poe/all

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