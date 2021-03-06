# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twilio_with_thinq/version'

Gem::Specification.new do |spec|
  spec.name          = "twilio_with_thinq"
  spec.version       = TwilioWithThinq::VERSION
  spec.authors       = ["Fujio Harou"]
  spec.email         = ["harouf@outlook.com"]

  spec.summary       = %q{Twilio Wrapper Ruby Library For thinQ LCR integration.}
  spec.description   = %q{Note that you will need a valid LCR Account with thinQ before using the libraries. For more information please contact your thinQ Sales representative at http://www.thinq.com/library/.}
  spec.homepage      = "https://github.com/harouf/twilio-thinq-ruby"
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
