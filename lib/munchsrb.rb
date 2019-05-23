# frozen_string_literal: true

require 'munchsrb/version'
require 'munchsrb/aggregator'

# Munchsrb Top level module Munchsrb
module Munchsrb
  class Error < StandardError
  end
  # Your code goes here...
  ag = Munchsrb::Aggreagtor.new
  ag.open_page
  ag.print_menus
end
