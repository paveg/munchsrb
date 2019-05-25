# frozen_string_literal: true

require 'bundler/setup'
require 'munchsrb'
require 'simplecov'

# Set up SimpleCov
SimpleCov.start { %w[vendor/ spec/].each { |dir| add_filter(dir) } }

if ENV['CI']
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
    config.expect_with :rspec do |expectations|
      expectations.warn_about_potential_false_positives = false
    end
    config.define_derived_metadata do |meta|
      meta[:aggregate_failures] = true unless meta.key?(:aggregate_failures)
    end
    config.raise_errors_for_deprecations!
    config.color = true
  end
end
