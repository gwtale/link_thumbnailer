# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'link_thumbnailer/version'

Gem::Specification.new do |spec|
  spec.name          = "link_thumbnailer"
  spec.version       = LinkThumbnailer::VERSION
  spec.authors       = ["Pierre-Louis Gottfrois"]
  spec.email         = ["pierrelouis.gottfrois@gmail.com"]
  spec.description   = %q{Ruby gem generating thumbnail images from a given URL.}
  spec.summary       = %q{Ruby gem ranking images from a given URL returning an object containing images and website informations.}
  spec.homepage      = "https://github.com/gottfrois/link_thumbnailer"

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rake',                   '>= 0.9'
  spec.add_dependency 'nokogiri',               '~> 1.6'
  spec.add_dependency 'net-http-persistent',    '~> 2.9'
  spec.add_dependency 'fastimage',              '~> 1.5'
  spec.add_dependency 'hashie',                 '~> 2.0'

  spec.add_development_dependency 'bundler',    '~> 1.3'
  spec.add_development_dependency 'rspec',      '~> 2.14'
  spec.add_development_dependency 'pry',        '~> 0.9'
end
