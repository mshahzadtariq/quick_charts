# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quick_charts/version'

Gem::Specification.new do |spec|
  spec.name          = "quick_charts"
  spec.version       = QuickCharts::VERSION
  spec.authors       = ["Shahzad Tariq"]
  spec.email         = ["m.shahzad.tariq@hotmail.com"]

  spec.summary       = %q{Ruby wrapper for Quick Charts open source charts generation utility}
  spec.description   = %q{Ruby wrapper for Quick Charts open source charts generation utility}
  spec.homepage      = "https://github.com/mshahzadtariq/quick_charts"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'httparty'
end
