require 'lite_spec_helper'

describe Mongo::Monitoring::Event::Cmap::ConnectionCheckedOut do

  describe '#summary' do

    let(:address) do
      Mongo::Address.new('127.0.0.1:27017')
    end

    let(:id) do
      1
    end

    let(:pool_id) do
      7
    end

    let(:event) do
      described_class.new(address, id, pool_id)
    end

    it 'renders correctly' do
      expect(event.summary).to eq("#<ConnectionCheckedOut address=127.0.0.1:27017 connection_id=1 pool=0x7>")
    end
  end
end