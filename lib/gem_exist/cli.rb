class CLI

  def begin_new_search
    puts "Enter a term to search on rubygems.org:"
    search_term = gets.strip
    Search_rubygems.new(search_term)
  end


end

CLI.new.begin_new_search