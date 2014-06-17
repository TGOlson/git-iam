# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_iam/version'

Gem::Specification.new do |spec|
  spec.name          = "git_iam"
  spec.version       = GitIam::VERSION
  spec.authors       = ["TGOlson"]
  spec.email         = ["tydotg@gmail.com"]
  spec.summary       = %q{Command line tool for easily switching git authors, remotes, and other configs on shared computers.}
  spec.description   = %q{Command line tool for easily switching git authors, remotes, and other configs on shared computers.}
  spec.homepage      = "https://github.com/TGOlson/git_iam"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"
end
