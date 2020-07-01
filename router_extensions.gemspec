# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'router_extensions/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'router_extensions'
  spec.version     = RouterExtensions::VERSION
  spec.authors     = ['masarakki']
  spec.email       = ['masaki182@gmail.com']
  spec.homepage    = 'https://github.com/masarakki/router_extensions'
  spec.summary     = 'useful extensions for rails routes'
  spec.description = 'useful extensions for rails routes'
  spec.license     = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5.2.0'

  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'rspec-rails'
end
