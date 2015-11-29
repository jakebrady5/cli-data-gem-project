module GemExist

  def self.hi
    puts "Hello World."
  end

end


require_relative 'gem_exist/cli'
require_relative 'gem_exist/search_rubygems'
require_relative 'gem_exist/version'



GemExist::Cli.new