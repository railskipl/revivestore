# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spree_mobile_views"
  s.version = "0.50.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roman Smirnov"]
  s.date = "2011-05-17"
  s.description = "Works through jQuery Mobile"
  s.email = "roman@railsdog.com"
  s.homepage = "https://github.com/romul/spree_mobile_views"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["none"]
  s.rubygems_version = "1.8.12"
  s.summary = "Adds support of mobile devices to Spree stores"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, [">= 0.50.0"])
    else
      s.add_dependency(%q<spree_core>, [">= 0.50.0"])
    end
  else
    s.add_dependency(%q<spree_core>, [">= 0.50.0"])
  end
end
