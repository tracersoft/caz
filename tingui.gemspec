$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tingui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tingui"
  s.version     = Tingui::VERSION
  s.authors     = ["Jaimerson Araújo", "Marcelo Piva", "Ronaldo Teruia"]
  s.email       = ["jaimersonaraujo@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Tingui."
  s.description = "TODO: Description of Tingui."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
