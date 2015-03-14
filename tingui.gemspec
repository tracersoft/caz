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
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "bourbon"
  s.add_dependency "neat"
  s.add_dependency "bitters"
  s.add_dependency "sass-rails"
  s.add_dependency "friendly_id", "~> 5.1.0"
  s.add_dependency "jquery-rails", "~> 3.1.2"
  s.add_dependency "sprockets-es6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "capybara-webkit"
  s.add_development_dependency "jasmine"
end
