# frozen_string_literal: true

require 'selenium-webdriver'
require 'nokogiri'
require 'open-uri'
require 'pry'

MENU_PAGE = 'https://munchs.jp/menu.html'
MENU_ITEMS_PATH = { xpath: '//section[@class="menu-all"]//div[@class="menu-item"]' }.freeze
MENU_NAME_PATH = { xpath: 'h4' }.freeze
MENU_PRICE_PATH = { xpath: 'p' }.freeze

class Munchsrb
  # Aggregator This class aggregates menu information from munch's burger.
  class Aggreagtor
    def initialize
      @driver = prepare_driver
      @wait = Selenium::WebDriver::Wait.new(timeout: 10)
    end

    def open_page
      @driver.navigate.to(MENU_PAGE)
    end

    def fetch_menus
      @driver.find_elements(MENU_ITEMS_PATH).map do |element|
        menu_name = element.find_element(MENU_NAME_PATH).text.split("\n").last
        md = element.find_element(MENU_PRICE_PATH).text.delete(',').match(/¥(?<price>\d+)/)
        { name: menu_name, price: md[:price].to_i }
      end
    end

    def print_menus
      menus = fetch_menus
      menus.each do |menu|
        puts "name: #{menu[:name]}, price: #{menu[:price]}"
      end
    end

    private

    def prepare_driver
      d = Selenium::WebDriver.for :chrome
      d.manage.window.resize_to(1440, 1080)
      d.manage.timeouts.implicit_wait = 3
      d
    end
  end
end
