# frozen_string_literal: true

module Munchsrb
  module Gather
    # Munchsrb::Gather::Scenario written story page scraping.
    class Scenario
      attr_reader :details

      def initialize
        @page = open
        @driver = Munchsrb::Gather.driver
        @details = nil
      end

      def execute
        @page.menu_link.click # open menu page
        Munchsrb::Gather::PageObject::MenuPage.new.tap do |page|
          @details = page.details
        end
      ensure
        quit
      end

      private

      def open
        Munchsrb::Gather::PageObject::IndexPage.new.tap(&:load)
      end

      def quit
        @driver.quit
      end
    end
  end
end
