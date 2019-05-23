# frozen_string_literal: true

module Munchsrb
  module Gather
    class << self
      attr_reader :driver

      def init
        Capybara.register_driver :chrome do |app|
          prepare(app)
        end

        Capybara.configure do |config|
          config.run_server = false
          config.default_driver = :chrome
          config.javascript_driver = :chrome
          config.default_max_wait_time = 2
        end
      end

      private

      def prepare(app)
        @driver = Capybara::Selenium::Driver.new(
          app,
          browser: :chrome,
          desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(options)
        )
      end

      def options
        {
          chrome_options: {
            args: arguments,
            prefs: preferences
          }
        }
      end

      def arguments
        %w[--no-sandbox --verbose --window-size=1280,800 --disable-save-password-bubble --lang=ja --disable-gpu incognito]
      end

      def preferences
        { credentials_enable_service: false, password_manager_enabled: false }
      end
    end
  end
end
