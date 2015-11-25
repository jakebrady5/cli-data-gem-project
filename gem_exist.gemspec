  Gem::Specification.new do |s|
  s.name = 'gem_exist'
  s.version = '0.0.0'
  s.date = '11/24/15'
  s.summary = "Search rubygems.org for gem info."
  s.description = "Search rubygems.org for gem info."
  s.authors = ["Jake Brady"]
  s.email = "jakebrady5@gmail.com"
  s.files = ["lib/"]#does this work??

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec"
  s.add_development_dependency "nokogiri"
  s.add_development_dependency "pry"
  s.add_development_dependency "open-uri" #check spelling

  s.executables = ["gem_exist"]