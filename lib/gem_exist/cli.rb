require_relative 'search_rubygems'
require_relative '../gem_exist.rb'
# shouldn't need this, figure out how to fix

class Cli

  def initialize
    begin_new_search
  end

  def begin_new_search
    puts "Enter a term to search on rubygems.org:"
    search_term = gets.strip
    Search_rubygems.new(search_term)
  end


end

