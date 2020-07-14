require 'pry'
require 'httparty'

class API
    URL = "https://poetrydb.org/author"

    def get_poems

        response = HTTParty.get(URL + ",linecount/;12").to_a
        (0..11).each { |i| puts response[rand(154)]['lines'][i]}


        Poem.new(@lines)
        
           

    end

    #Poem.new(@lines,@author,@name)
    #,linecount/;12/author,title,lines"
    end
