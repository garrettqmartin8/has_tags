# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_tags/version'

Gem::Specification.new do |spec|
  spec.name          = "has_tags"
  spec.version       = HasTags::VERSION
  spec.authors       = ["Garrett Martin"]
  spec.email         = ["me@garrettqmartin.com"]
  spec.description   = %q{Simple tagging with contexts.}
  spec.summary       = %q{Simple tagging with contexts.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activerecord'

  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "shoulda-matchers"
end
