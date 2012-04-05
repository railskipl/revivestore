# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "spree_core"
  s.version = "0.70.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sean Schofield"]
  s.date = "2011-11-22"
  s.description = "Required dependency for Spree"
  s.email = "sean@railsdog.com"
  s.homepage = "http://spreecommerce.com"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["none"]
  s.rubyforge_project = "spree_core"
  s.rubygems_version = "1.8.12"
  s.summary = "Core e-commerce functionality for the Spree project."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<acts_as_list>, ["= 0.1.4"])
      s.add_runtime_dependency(%q<nested_set>, ["= 1.6.8"])
      s.add_runtime_dependency(%q<rd_find_by_param>, ["= 0.1.1"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 1.0.14"])
      s.add_runtime_dependency(%q<highline>, ["= 1.6.2"])
      s.add_runtime_dependency(%q<stringex>, ["= 1.0.3"])
      s.add_runtime_dependency(%q<state_machine>, ["= 1.0.1"])
      s.add_runtime_dependency(%q<faker>, ["= 1.0.0"])
      s.add_runtime_dependency(%q<paperclip>, ["= 2.4.1"])
      s.add_runtime_dependency(%q<rd_resource_controller>, [">= 0"])
      s.add_runtime_dependency(%q<meta_search>, ["= 1.1.1"])
      s.add_runtime_dependency(%q<activemerchant>, ["= 1.17.0"])
      s.add_runtime_dependency(%q<rails>, ["<= 3.1.3", ">= 3.1.1"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_runtime_dependency(%q<deface>, [">= 0.7.0"])
    else
      s.add_dependency(%q<acts_as_list>, ["= 0.1.4"])
      s.add_dependency(%q<nested_set>, ["= 1.6.8"])
      s.add_dependency(%q<rd_find_by_param>, ["= 0.1.1"])
      s.add_dependency(%q<jquery-rails>, [">= 1.0.14"])
      s.add_dependency(%q<highline>, ["= 1.6.2"])
      s.add_dependency(%q<stringex>, ["= 1.0.3"])
      s.add_dependency(%q<state_machine>, ["= 1.0.1"])
      s.add_dependency(%q<faker>, ["= 1.0.0"])
      s.add_dependency(%q<paperclip>, ["= 2.4.1"])
      s.add_dependency(%q<rd_resource_controller>, [">= 0"])
      s.add_dependency(%q<meta_search>, ["= 1.1.1"])
      s.add_dependency(%q<activemerchant>, ["= 1.17.0"])
      s.add_dependency(%q<rails>, ["<= 3.1.3", ">= 3.1.1"])
      s.add_dependency(%q<kaminari>, [">= 0.12.4"])
      s.add_dependency(%q<deface>, [">= 0.7.0"])
    end
  else
    s.add_dependency(%q<acts_as_list>, ["= 0.1.4"])
    s.add_dependency(%q<nested_set>, ["= 1.6.8"])
    s.add_dependency(%q<rd_find_by_param>, ["= 0.1.1"])
    s.add_dependency(%q<jquery-rails>, [">= 1.0.14"])
    s.add_dependency(%q<highline>, ["= 1.6.2"])
    s.add_dependency(%q<stringex>, ["= 1.0.3"])
    s.add_dependency(%q<state_machine>, ["= 1.0.1"])
    s.add_dependency(%q<faker>, ["= 1.0.0"])
    s.add_dependency(%q<paperclip>, ["= 2.4.1"])
    s.add_dependency(%q<rd_resource_controller>, [">= 0"])
    s.add_dependency(%q<meta_search>, ["= 1.1.1"])
    s.add_dependency(%q<activemerchant>, ["= 1.17.0"])
    s.add_dependency(%q<rails>, ["<= 3.1.3", ">= 3.1.1"])
    s.add_dependency(%q<kaminari>, [">= 0.12.4"])
    s.add_dependency(%q<deface>, [">= 0.7.0"])
  end
end
