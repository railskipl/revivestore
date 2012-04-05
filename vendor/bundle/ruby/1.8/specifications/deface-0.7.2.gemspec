# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "deface"
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian D Quinn"]
  s.date = "2011-11-28"
  s.description = "Deface is a library that allows you to customize ERB views in a Rails application without editing the underlying view."
  s.email = "brian@railsdog.com"
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown"]
  s.homepage = "http://github.com/railsdog/deface"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.12"
  s.summary = "Deface is a library that allows you to customize ERB views in Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.5.0"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0.9"])
      s.add_development_dependency(%q<rspec>, [">= 2.7.0"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.5.0"])
      s.add_dependency(%q<rails>, [">= 3.0.9"])
      s.add_dependency(%q<rspec>, [">= 2.7.0"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.5.0"])
    s.add_dependency(%q<rails>, [">= 3.0.9"])
    s.add_dependency(%q<rspec>, [">= 2.7.0"])
  end
end
