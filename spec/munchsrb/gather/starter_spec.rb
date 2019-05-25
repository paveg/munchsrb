# frozen_string_literal: true

require 'rspec'

describe Munchsrb::Gather::Starter do
  let(:instance) { described_class.new }
  let(:scenario_double) { instance_double(::Munchsrb::Gather::Scenario) }

  before { allow(::Munchsrb::Gather::Scenario).to receive(:new).and_return(scenario_double) }

  describe '#initialize' do
    it { expect(instance).to be_a(described_class) }
  end

  describe '#run' do
    xit {}
  end
end
