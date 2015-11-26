class Gem_exist::Search_rubygems

  attr_accesor :search_term

  def initialize(search_term)
    @search_term = search_term
  end

  def scrape_search_results
    
    url = "https://rubygems.org/search?utf8=✓&query=#{@search_term}"
  end

end