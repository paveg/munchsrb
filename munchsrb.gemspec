# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'munchsrb/version'

Gem::Specification.new do |spec|
  spec.name = 'munchsrb'
  spec.version = Munchsrb::VERSION
  spec.authors = ['Ryota Ikezawa']
  spec.email = ['pavegy@gmail.com']

  spec.summary = "Munch's Burger Gather."
  spec.description = "Munch's Burger Scraper Gem."
  spec.homepage = 'https://github.com/paveg/munchsrb'
  spec.license = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'danger'
  spec.add_development_dependency 'danger-junit'
  spec.add_development_dependency 'danger-rubocop'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'rubocop', '~> 0.70'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_dependency 'capybara'
  spec.add_dependency 'google-api-client'
  spec.add_dependency 'google_drive'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'pdf-reader'
  spec.add_dependency 'selenium-webdriver', '~> 3.142'
  spec.add_dependency 'site_prism', '~> 3.2'
  spec.add_dependency 'unicode'
end
