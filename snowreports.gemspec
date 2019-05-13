# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "snowreports/version"

Gem::Specification.new do |spec|
  spec.name          = "snowreports"
  spec.version       = Snowreports::VERSION
  spec.authors       = ["Patrick Davey"]
  spec.email         = ["patrick.davey@gmail.com"]

  spec.summary       = %q{Fetches and parses reports from snowreports.co.nz}
  spec.description   = %q{Fetches are parses reports from snowreports.co.nz}
  spec.homepage      = "https://github.com/snowpool/snowreports"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "faraday", "~> 2.0"
  spec.add_runtime_dependency     "nokogiri", "~> 1.8"


  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
