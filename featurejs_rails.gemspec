# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'featurejs_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'featurejs_rails'
  spec.version       = FeaturejsRails::VERSION
  spec.authors       = ['Curt Howard']
  spec.email         = ['choward@weblinc.com']

  spec.summary       = 'Feature.js packaged for the Rails Asset Pipeline'
  spec.description   = 'Feature.js packaged for the Rails Asset Pipeline'
  spec.homepage      = 'https://github.com/meowsus/featurejs_rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
end
