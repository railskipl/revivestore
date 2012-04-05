# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spree"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sean Schofield"]
  s.date = "2009-03-10"
  s.description = "Spree is a complete commerce solution designed for use by experienced Rails developers. No solution can possibly solve everyone\342\200\231s needs perfectly. There are simply too many ways that people do business for us to model them all specifically. Rather then come up short (like so many projects before it), Spree\342\200\231s approach is to simply accept this and not even try. Instead Spree tries to focus on solving the 90% of the problem that most commerce projects face and anticipate that the other 10% will need to be addressed by the end developer familiar with the client\342\200\231s exact business requirements."
  s.email = "sean.schofield@gmail.com"
  s.executables = ["spree"]
  s.files = ["bin/spree"]
  s.homepage = "http://spreehq.org"
  s.rdoc_options = ["--exclude", "app", "--exclude", "bin", "--exclude", "config", "--exclude", "db", "--exclude", "lib", "--exclude", "log", "--exclude", "pkg", "--exclude", "public", "--exclude", "script", "--exclude", "spec", "--exclude", "tmp", "--exclude", "vendor"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "spree"
  s.rubygems_version = "1.8.12"
  s.summary = "A complete commerce solution for Ruby on Rails."

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0.7.1"])
      s.add_runtime_dependency(%q<highline>, [">= 1.4.0"])
    else
      s.add_dependency(%q<rake>, [">= 0.7.1"])
      s.add_dependency(%q<highline>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.7.1"])
    s.add_dependency(%q<highline>, [">= 1.4.0"])
  end
end
