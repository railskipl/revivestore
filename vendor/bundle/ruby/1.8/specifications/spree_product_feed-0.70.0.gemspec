# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spree_product_feed"
  s.version = "0.70.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Nussbaum"]
  s.date = "2011-10-24"
  s.description = "A Spree extension that provides an RSS feed for products, with Google Shopper extensions"
  s.email = "joshnuss@gmail.com"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["none"]
  s.rubygems_version = "1.8.12"
  s.summary = "Spree extension that provides an RSS feed for products"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, [">= 0.70.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, [">= 0.70.0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, [">= 0.70.0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end
