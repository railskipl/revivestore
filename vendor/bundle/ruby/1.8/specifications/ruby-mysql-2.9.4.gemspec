# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ruby-mysql"
  s.version = "2.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["tommy"]
  s.date = "2010-12-28"
  s.description = "MySQL connector for Ruby"
  s.email = "tommy@tmtm.org"
  s.extra_rdoc_files = ["README.rdoc", "ChangeLog"]
  s.files = ["README.rdoc", "ChangeLog"]
  s.homepage = "http://github.com/tmtm/ruby-mysql"
  s.rdoc_options = ["--title", "ruby-mysql documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = "rubymysql"
  s.rubygems_version = "1.8.12"
  s.summary = "MySQL connector for Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
