# frozen_string_literal: true

require 'rspec'

describe Munchsrb::Gather::Scenario do
  let(:instance) { described_class.new }
  let(:index_page_double) { instance_double(Munchsrb::Gather::PageObject::IndexPage) }

  before do
    allow(::Munchsrb::Gather::PageObject::IndexPage)
      .to receive_message_chain(:new, :tap).and_return(index_page_double)
  end

  describe '#initialize' do
    it { expect(instance).to be_a(described_class) }
  end

  describe '#execute' do
    xit {}
  end
end
