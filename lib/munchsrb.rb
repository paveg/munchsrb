# frozen_string_literal: true

require 'munchsrb/version'
require 'capybara'
require 'capybara/rspec'
require 'nokogiri'
require 'pdf-reader'
require 'site_prism'
require 'google_drive'
require 'selenium-webdriver'
require 'munchsrb/gather/config'
require 'munchsrb/gather/starter'
require 'munchsrb/gather/page_object/pages'
require 'munchsrb/exporter/google_client'
require 'munchsrb/exporter/sheet'

# Munchsrb Top level module Munchsrb
module Munchsrb
  class Error < StandardError
  end
  # GatherError is occurred in gathering.
  class GatherError < StandardError
  end
end
