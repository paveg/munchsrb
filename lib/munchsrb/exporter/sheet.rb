# frozen_string_literal: true

module Munchsrb
  module Exporter
    # Munchsrb::Exporter::Sheet exports content to Google Spread Sheet.
    class Sheet
      HEADER = %w[メニュー名 金額].freeze
      ROW_START_INDEX = 1
      COLUMN_START_INDEX = 1

      def initialize(key = nil)
        session = Munchsrb::Exporter::GoogleClient.session
        @worksheet = session.spreadsheet_by_key(ENV.fetch('GOOGLE_SPREAD_SHEET_KEY', key)).worksheets[0]
      end

      def export(details)
        contents = []
        contents << HEADER
        details.each { |detail| contents << [detail[:name], detail[:price]] }
        save(contents)
      end

      private

      def save(contents)
        contents.each.with_index(ROW_START_INDEX) do |content, row_index|
          content.each.with_index(COLUMN_START_INDEX) do |c, column_index|
            @worksheet[row_index, column_index] = c
          end
        end
        @worksheet.save
      end
    end
  end
end
