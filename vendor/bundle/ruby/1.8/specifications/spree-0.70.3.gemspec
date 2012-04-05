# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spree"
  s.version = "0.70.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sean Schofield"]
  s.bindir = "lib/spree/bin"
  s.date = "2011-11-22"
  s.description = "Spree is an open source e-commerce framework for Ruby on Rails.  Join us on the spree-user google group or in #spree on IRC"
  s.email = "sean@railsdog.com"
  s.executables = ["spree"]
  s.files = ["lib/spree/bin/spree"]
  s.homepage = "http://spreecommerce.com"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["none"]
  s.rubyforge_project = "spree"
  s.rubygems_version = "1.8.12"
  s.summary = "Full-stack e-commerce framework for Ruby on Rails."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["= 0.70.3"])
      s.add_runtime_dependency(%q<spree_auth>, ["= 0.70.3"])
      s.add_runtime_dependency(%q<spree_api>, ["= 0.70.3"])
      s.add_runtime_dependency(%q<spree_dash>, ["= 0.70.3"])
      s.add_runtime_dependency(%q<spree_sample>, ["= 0.70.3"])
      s.add_runtime_dependency(%q<spree_promo>, ["= 0.70.3"])
    else
      s.add_dependency(%q<spree_core>, ["= 0.70.3"])
      s.add_dependency(%q<spree_auth>, ["= 0.70.3"])
      s.add_dependency(%q<spree_api>, ["= 0.70.3"])
      s.add_dependency(%q<spree_dash>, ["= 0.70.3"])
      s.add_dependency(%q<spree_sample>, ["= 0.70.3"])
      s.add_dependency(%q<spree_promo>, ["= 0.70.3"])
    end
  else
    s.add_dependency(%q<spree_core>, ["= 0.70.3"])
    s.add_dependency(%q<spree_auth>, ["= 0.70.3"])
    s.add_dependency(%q<spree_api>, ["= 0.70.3"])
    s.add_dependency(%q<spree_dash>, ["= 0.70.3"])
    s.add_dependency(%q<spree_sample>, ["= 0.70.3"])
    s.add_dependency(%q<spree_promo>, ["= 0.70.3"])
  end
end
