# frozen_string_literal: true

require 'munchsrb/gather/scenario'

module Munchsrb
  module Gather
    # Starter starts gather information of Munch's Burger.
    class Starter
      attr_reader :scenario

      def initialize
        Munchsrb::Gather.init
        @scenario = ::Munchsrb::Gather::Scenario.new
      end

      def run
        scenario.execute
        @scenario.details
      rescue Munchsrb::GatherError => e
        print("Gather Error occurred! #{e.message}\n")
      end
    end
  end
end
