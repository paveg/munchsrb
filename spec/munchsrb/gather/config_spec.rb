# frozen_string_literal: true

require 'spec_helper'

describe Munchsrb::Gather do
  describe '.init' do
    subject { described_class.init }

    it 'returns correctly configured' do
      expect(subject).to eq(Munchsrb::Gather::DEFAULT_MAX_WAIT_TIME)
      Capybara.configure do |config|
        expect(config.run_server).to eq(false)
        expect(config.default_driver).to eq(:chrome)
        expect(config.javascript_driver).to eq(:chrome)
      end
    end
  end
end
