Gem::Specification.new do |s|
  s.name = "deface"
  s.version = "0.7.2"

  s.authors = ["Brian D Quinn"]
  s.description = "Deface is a library that allows you to customize ERB views in a Rails application without editing the underlying view."
  s.email = "brian@railsdog.com"
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage = "http://github.com/railsdog/deface"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.summary = "Deface is a library that allows you to customize ERB views in Rails"

  s.add_dependency('nokogiri', '~> 1.5.0')
  s.add_dependency('rails', '>= 3.0.9')

  s.add_development_dependency('rspec', '>= 2.7.0')
end
