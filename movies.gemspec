# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "movies"
  s.version     = "0.1.10"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Linus Oleander"]
  s.email       = ["linus@oleander.nu"]
  s.homepage    = "https://github.com/oleander/Movies"
  s.summary     = %q{Ruby bindings for IMDb using imdbapi.com as source}
  s.description = %q{Ruby bindings for IMDb using imdbapi.com as source}

  s.rubyforge_project = "movies"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency("rest-client")
  s.add_dependency("nokogiri")
  
  s.add_development_dependency("vcr")
  s.add_development_dependency("rspec")  
  s.add_development_dependency("webmock")
  
  s.required_ruby_version = "~> 1.9.0"
end
