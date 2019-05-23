# frozen_string_literal: true

require 'site_prism'
module Munchsrb
  module Gather
    module PageObject
      class MenuPage < SitePrism::Page
        set_url 'https://munchs.jp/menu.html'
      end
    end
  end
end

# MENU_PAGE = 'https://munchs.jp/menu.html'
# MENU_ITEMS_PATH = { xpath: '//section[@class="menu-all"]//div[@class="menu-item"]' }.freeze
# MENU_NAME_PATH = { xpath: 'h4' }.freeze
# MENU_PRICE_PATH = { xpath: 'p' }.freeze
#
# module Munchsrb
#   # Aggregator This class aggregates menu information from munch's burger.
#   class Aggreagtor
#     def open_page
#       @driver.navigate.to(MENU_PAGE)
#     end
#
#     def fetch_menus
#       @driver.find_elements(MENU_ITEMS_PATH).map do |element|
#         menu_name = element.find_element(MENU_NAME_PATH).text.split("\n").last
#         md = element.find_element(MENU_PRICE_PATH).text.delete(',').match(/¥(?<price>\d+)/)
#         { name: menu_name, price: md[:price].to_i }
#       end
#     end
#
#     def print_menus
#       menus = fetch_menus
#       menus.each do |menu|
#         puts "name: #{menu[:name]}, price: #{menu[:price]}"
#       end
#     end
#   end
# end
