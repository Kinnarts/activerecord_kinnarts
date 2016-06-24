# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord_kinnarts/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord_kinnarts"
  spec.version       = ActiverecordKinnarts::VERSION
  spec.authors       = ["Anton Zhirkov"]
  spec.email         = ["an.zhirkov@gmail.com"]
  spec.summary       = %q{My own activerecord and activemodel}
  spec.description   = %q{Features of activerecord and activemodel with filesystem as storage}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
