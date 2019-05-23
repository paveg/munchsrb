# frozen_string_literal: true

require 'capybara'
require 'capybara/rspec'
require 'nokogiri'
require 'site_prism'
require 'selenium-webdriver'
require 'munchsrb/version'
require 'munchsrb/gather/config'
require 'munchsrb/gather/starter'
require 'munchsrb/gather/page_object/pages'

# Munchsrb Top level module Munchsrb
module Munchsrb
  class Error < StandardError
  end
end
