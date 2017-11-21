$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "better_styles/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "better_styles"
  s.version     = BetterStyles::VERSION
  s.authors     = ["Torsten Wetzel", "Marco Sebald"]
  s.email       = ["torstenwetzel@berlinmagic.com", "marcosebald@berlinmagic.com"]
  s.homepage    = "http://berlinmagic.github.io/better_styles/"
  s.summary     = "BetterStyles is our new css pack depending on BootStrap 4."
  s.description = "Lots of styles and helpers we used for several projects."
  s.license     = "MIT"

  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.files = Dir["{app,assets,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # s.add_dependency "rails", "~> 5.0.2"
  s.add_dependency "rails",                 ">= 4.1"
  # s.add_dependency 'bootstrap',             '>= 4.0.0.alpha6'
  # s.add_dependency 'bootstrap-sass',        '>= 3.3.5.1', '< 3.4'
  s.add_dependency 'rails-assets-tether',   '>= 1.3.3'
  s.add_dependency 'jquery-rails',          '>= 3.1.0'
  
end
