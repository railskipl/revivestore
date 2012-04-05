# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rd_resource_controller"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Golick", "Brian Quinn", "Sean Schofield"]
  s.date = "2011-01-18"
  s.description = "resource_controller adapted to Rails 3"
  s.email = "james@giraffesoft.ca"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc", "TODO"]
  s.files = ["LICENSE", "README.rdoc", "TODO"]
  s.homepage = "http://github.com/railsdog/resource_controller"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.12"
  s.summary = "Rails RESTful controller abstraction plugin."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
