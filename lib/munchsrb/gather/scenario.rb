# frozen_string_literal: true

module Munchsrb
  module Gather
    # Munchsrb::Gather::Scenario written story page scraping.
    class Scenario
      attr_reader :details, :pdf_details

      def initialize
        @page = open_page
        @driver = Munchsrb::Gather.driver
        @details = nil
        @pdf_details = nil
      end

      def execute
        @page.menu_link.click # open menu page
        Munchsrb::Gather::PageObject::MenuPage.new.tap do |page|
          @details = page.details
        end
        Munchsrb::Gather::PageObject::DeliveryMenu.new.tap do |page|
          page.load
          io = Kernel.open(page.url)
          reader = PDF::Reader.new(io)
          @pdf_details = reader.pages.map(&:text)
        end
      ensure
        quit
      end

      private

      def open_page
        Munchsrb::Gather::PageObject::IndexPage.new.tap(&:load)
      end

      def quit
        @driver.quit
      end
    end
  end
end
