# frozen_string_literal: true

module Munchsrb
  module Gather
    # Munchsrb::Gather::Scenario written story page scraping.
    class Scenario
      def initialize
        @page = open
        @driver = Munchsrb::Gather.driver
      end

      def execute
        @page.menu_link.click # open menu page
        Munchsrb::Gather::PageObject::MenuPage.new.tap do |page|
          details = page.details
          details.each do |detail|
            puts detail
          end
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
