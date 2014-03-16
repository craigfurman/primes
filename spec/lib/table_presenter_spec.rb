require 'table_presenter'

describe TablePresenter do
  describe '#print' do
    let(:multiplication_table) { double('MultiplcationTable') }
    let(:output) { double('StdOut') }
    let(:left) { [1, 2] }
    let(:top) { [30, 20, 10] }
    let(:result) { [[30, 20, 10],
                    [60, 40, 20]] }

    subject { described_class.new(multiplication_table, output).present(top, left) }

    before do
      allow(multiplication_table).to receive(:product_table).and_return(result)
      allow(output).to receive(:puts)
    end

    it 'computes table from inputs' do
      subject
      expect(multiplication_table).to have_received(:product_table).with(top, left)
    end

    it 'prints table to the command line' do
      subject
      table_string = " 30 20 10\n1 30 20 10\n2 60 40 20"
      expect(output).to have_received(:puts).with(table_string)
    end
  end
end
