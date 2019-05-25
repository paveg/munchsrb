# frozen_string_literal: true

require 'google_drive'

module Munchsrb
  module Exporter
    # Munchsrb::Exporter::GoogleClient is shared client to access google apis.
    class GoogleClient
      SCOPES = [
        'https://www.googleapis.com/auth/drive',
        'https://spreadsheets.google.com/feeds/'
      ].freeze

      class << self
        def session
          GoogleDrive::Session.from_credentials(credentials)
        end

        private

        def credentials
          ::Google::Auth::UserRefreshCredentials.new(
            client_id: ENV['GOOGLE_CLIENT'],
            client_secret: ENV['GOOGLE_CLIENT_SECRET'],
            refresh_token: ENV['GOOGLE_REFRESH_TOKEN'],
            scope: SCOPES,
            redirect_uri: 'urn:ietf:wg:oauth:2.0:oob'
          )
        end
      end
    end
  end
end
