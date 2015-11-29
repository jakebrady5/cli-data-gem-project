require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'
#these^ requirements aren't being met elsewhere, fix that

class Search_rubygems

  attr_accessor :search_term, :url, :results, :names, :project_uri

  def initialize(search_term)
    @names = []
    @project_uri = []
    @search_term = search_term
    #add ability to handle multi word strings
    @url = "https://rubygems.org/api/v1/search.json?query=#{search_term}"
    get_search_results
  end

  def get_search_results
    @results = JSON.load(open(url))
    narrow_results
    populate_fields
    display_names
    get_gem_data(1)
  end

  def narrow_results
    # default search returns up to 30 results, making more manageable size
    while @results.size > 7
      @results.pop
      # will i need a different return value?
    end
  end

  def populate_fields
    @results.each{|a|
      @names << a["name"]
      @project_uri << a["project_uri"]
    }
  end

  def display_names
    @names.each_with_index{|a, i| puts "#{i+1}. #{a}"}
  end

  def get_gem_data(num)
    this_url = @project_uri[num - 1]
    index = open(this_url)
    doc = Nokogiri::HTML(index)
    desc = doc.css(".gem__desc p").text
    downloads = doc.css(".gem__downloads").first.text
    author = doc.css(".t-list__item p").text
    puts "Gem Name: #{@names[num - 1]}"
    puts "Gem Description: #{desc}"
    puts "Gem Author: #{author}"
    puts "Gem Downloads: #{downloads}"
  end

  # def display_gem_data(num)
  #   #puts "Gem Name:" @names[num - 1]
  #   puts "Gem Description: #{desc}"
  #   puts "Gem Author: #{author}"
  #   puts "Gem Downloads: #{downloads}"
  # end


end









