# frozen_string_literal: true

require 'munchsrb/gather/scenario'

module Munchsrb
  module Gather
    class Starter
      attr_reader :scenario

      def initialize
        Munchsrb::Gather.init
        @scenario = ::Munchsrb::Gather::Scenario.new
      end

      def run
        scenario.execute
      end
    end
  end
end
