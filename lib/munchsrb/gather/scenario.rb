# frozen_string_literal: true

module Munchsrb
  module Gather
    class Scenario
      def initialize
        @page = open
        @driver = Munchsrb::Gather.driver
      end

      def execute
        puts 'scenario'
      ensure
        quit
      end

      private

      def open
        Munchsrb::Gather::PageObject::MenuPage.new.tap(&:load)
      end

      def quit
        @driver.quit
      end
    end
  end
end
