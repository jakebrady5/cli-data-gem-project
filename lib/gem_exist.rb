require 'open-uri'
require 'nokogiri'
require 'pry'
require 'json'

require_relative 'gem_exist/cli'
require_relative 'gem_exist/search_rubygems'
require_relative 'gem_exist/version'

module Gem_exist

  def self.hi
    puts "Hello World."
  end

end

Cli.new