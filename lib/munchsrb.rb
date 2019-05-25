# frozen_string_literal: true

require 'munchsrb/version'
require 'capybara'
require 'capybara/rspec'
require 'nokogiri'
require 'site_prism'
require 'selenium-webdriver'
require 'munchsrb/gather/config'
require 'munchsrb/gather/starter'
require 'munchsrb/gather/page_object/pages'

# Munchsrb Top level module Munchsrb
module Munchsrb
  class Error < StandardError
  end
  # GatherError is occurred in gathering.
  class GatherError < StandardError
  end
end
