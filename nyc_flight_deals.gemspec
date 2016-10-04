# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nyc_flight_deals/version'

Gem::Specification.new do |spec|
  spec.name          = "nyc_flight_deals"
  spec.version       = NYCFlightDeals::VERSION
  spec.authors       = ["Christine Choi"]
  spec.email         = ["smi77y@gmail.com"]

  spec.summary       = %q{NYC flight deals}
  spec.description   = %q{CLI app to view flight deals to/from NYC}
  spec.homepage      = "https://rubygems.org/gems/nyc_flight_deals"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "nyc_flight_deals"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"


end
