# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/delete_files/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-delete_files'
  spec.version       = Fastlane::DeleteFiles::VERSION
  spec.author        = %q{GaryJohnson}
  spec.email         = %q{gary@gjtt.com}

  spec.summary       = %q{Deletes a file, folder or multiple files using shell glob pattern.}
  spec.homepage      = "https://github.com/leandog/fastlane-plugin-delete_files"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.104.0'
end
