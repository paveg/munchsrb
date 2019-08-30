# frozen_string_literal: true

require 'site_prism'
require 'unicode'

module Munchsrb
  module Gather
    module PageObject
      # IndexPage is index page of Munch's Burger.
      class IndexPage < SitePrism::Page
        set_url 'https://munchs.jp/index.html'

        element :menu_link, 'a[href="menu.html"]'
        element :delivery_link, 'a[href="delivery.html"]'
      end
      # Item is Item section on menu page of Munch's Burger.
      class Item < SitePrism::Section
        element :name, 'h4'
        element :price, 'p'
      end
      # MenuPage is menu page of Munch's Burger.
      class MenuPage < SitePrism::Page
        set_url 'https://munchs.jsp/menu.html'

        sections :menu_items, Item, 'section.menu-all div.menu-item'

        def details
          menu_items.map do |item|
            name = Unicode.nfkc(item.name.text.split("\n").last)
            price = item.price.text.delete(',').match(/¥(?<price>\d+)/)[:price].to_i
            { name: name, price: price }
          end
        end
      end
      # DeliveryMenuPage is Delivery menu page of Munch's Burger.
      class DeliveryMenu < SitePrism::Page
        set_url 'https://munchs.jp/pdf/delivery-menu8.pdf'
      end
    end
  end
end
