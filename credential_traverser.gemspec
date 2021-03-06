# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'credential_traverser/version'

Gem::Specification.new do |spec|
  spec.name          = "credential_traverser"
  spec.version       = CredentialTraverser::VERSION
  spec.authors       = ["Masao Mochizuki"]
  spec.email         = ["mochizuki.masao@classmethod.jp"]
  spec.summary       = %q{executes AWS API Actions for every AWS credential.}
  spec.description   = %q{credential_traverser executes codes for every AWS credential specified in ~/.aws/credentials}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "aws-sdk-v1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
