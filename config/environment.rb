

require 'bundler/setup'
Bundler.require

require_relative "../lib/api.rb"
require_relative "../lib/cli.rb"
require_relative "../lib/poems.rb"


module WordFelt #ignore
  class Error < StandardError; end
  # Your code goes here...
end

# require "pry"
# require "httparty"
# require "colorize"