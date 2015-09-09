# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twilio_with_thinq/version'

Gem::Specification.new do |spec|
  spec.name          = "twilio_with_thinq"
  spec.version       = TwilioWithThinq::VERSION
  spec.authors       = ["Fujio Harou"]
  spec.email         = ["harouf@outlook.com"]

  spec.summary       = %q{Twilio Wrapper Library For thinQ LCR integration.}
  spec.description   = %q{Twilio Wrapper Library is just written for the purpose to bring a new level of ease to the developers who deal with Twilio integration with [thinQ LCR](http://www.thinq.com/lcr/) system.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "twilio-ruby"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
