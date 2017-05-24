# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'top_songs/version'

Gem::Specification.new do |spec|
  spec.name          = "top_songs"
  spec.version       = TopSongs::VERSION
  spec.authors       = ["Sean Clarke"]
  spec.email         = ["xseanclarke@gmail.com"]

  spec.summary       = %q{This Ruby Gem provides a CLI to view the top 100 songs in music as per the Billboard charts.}
  spec.homepage      = "https://github.com/SCDesigns/top-songs-cli-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency 'nokogiri', '~> 0'
  spec.add_development_dependency 'pry', '~> 0'
end
