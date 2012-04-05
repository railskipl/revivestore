# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spree_dash"
  s.version = "0.70.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Quinn"]
  s.date = "2011-11-22"
  s.description = "Required dependency for Spree"
  s.email = "brian@railsdog.com"
  s.homepage = "http://spreecommerce.com"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["none"]
  s.rubyforge_project = "spree_dash"
  s.rubygems_version = "1.8.12"
  s.summary = "Overview dashboard for use with Spree."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["= 0.70.3"])
    else
      s.add_dependency(%q<spree_core>, ["= 0.70.3"])
    end
  else
    s.add_dependency(%q<spree_core>, ["= 0.70.3"])
  end
end
