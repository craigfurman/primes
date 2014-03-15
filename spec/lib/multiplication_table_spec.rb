require 'multiplication_table'

describe MultiplicationTable do
  describe '#product_table' do
    let(:table) { described_class.new }
    let(:top) { [3, 2, 1] }
    let(:left) { [10, 20, 30] }
    subject { table.product_table(top, left) }

    let(:result) { [[30, 20, 10],
                    [60, 40, 20],
                    [90, 60, 30]] }

    it { should == result }
  end
end
