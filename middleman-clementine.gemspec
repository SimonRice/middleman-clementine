# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-clementine/version"

Gem::Specification.new do |s|
  s.name        = "middleman-clementine"
  s.version     = Middleman::Clementine::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pierre-Yves Ritschard"]
  s.email       = ["pyr@spootnik.org"]
  s.homepage    = "https://github.com/pyr/middleman-clementine"
  s.summary     = %q{Clementine support for Middleman}
  s.description = %q{Clementine support for Middleman}

  s.rubyforge_project = "middleman-clementine"

  s.files         = `git ls-files -z`.split("\0")
  s.test_files    = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  s.require_paths = ["lib"]
  
  s.add_dependency("middleman-more", [">= 3.0.1"])
  s.add_dependency("clementine", [">= 0.0.3"])
end
