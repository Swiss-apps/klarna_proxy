# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'klarna/version'

Gem::Specification.new do |spec|
  spec.name          = 'swiss-klarna_proxy'
  spec.version       = Klarna::VERSION
  spec.authors       = ['Andrea Vassallo']
  spec.email         = ['andrea.vassallo.94@gmail.com']

  spec.summary       = 'Klarna Ruby Proxy'
  spec.description   = 'Provides a Ruby interface to the current Klarna API, forked and inspired by https://rubygems.org/gems/klarna_client/versions/0.1.0'
  spec.homepage      = ''
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.5'

  spec.add_development_dependency 'bundler', '~> 2.2.22'
  spec.add_development_dependency 'codecov', '~> 0.5.2'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'relaxed-rubocop', '~> 2.5'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'rspec_junit_formatter', '~> 0.4.1'
  spec.add_development_dependency 'rubocop', '~> 1.18', '>= 1.18.4'
  spec.add_development_dependency 'simplecov', '~> 0.21.2'
  spec.add_development_dependency 'sinatra-contrib'
  spec.add_development_dependency 'thin'
  spec.add_development_dependency 'vcr', '~> 5.1'
  spec.add_development_dependency 'webmock', '~> 3.8'
end
