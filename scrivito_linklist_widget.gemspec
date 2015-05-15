$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrivito_linklist_widget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = "scrivito_linklist_widget"
  s.version     = ScrivitoLinklistWidget::VERSION

  s.authors     = ["Scrivito"]
  s.email       = ["support@scrivito.com"]
  s.homepage    = "https://www.scrivito.com"
  
  s.summary     = "Widget to show a link list as list with text or css class."
  s.description = "Widget to show a link list as list with text or css class."
  s.license     = "LGPL-3.0"
  
  s.files = Dir[
    "{app,lib,scrivito}/**/*",
    "LICENSE",
    "Rakefile"
  ]

  s.add_dependency 'bundler'
  s.add_dependency 'scrivito_sdk'
  s.add_dependency 'scrivito_advanced_editors'

  s.add_development_dependency 'rake'
end
