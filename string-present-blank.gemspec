# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_present_blank/version'

Gem::Specification.new do |spec|
  spec.name          = "string-present-blank"
  spec.version       = StringPresentBlank::VERSION
  spec.authors       = ["Takashi Chiba"]
  spec.email         = ["contact@tachiba.jp"]
  spec.summary       = %q{Provides String#present and String#blank.}
  spec.homepage      = 'https://github.com/tachiba/ruby-string-present-blank'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', "~> 12.3"
  spec.add_development_dependency 'minitest', "~> 5.4"
end
