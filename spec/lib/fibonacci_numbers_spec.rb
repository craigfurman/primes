require 'fibonacci_numbers'

describe FibonacciNumbers do
  describe '#generate_sequence' do
    let(:count) { 10 }
    subject { described_class.new.generate_sequence(count) }

    it { should == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] }

    context 'count is 0' do
      let(:count) { 0 }
      it { should == [] }
    end

    context 'count is 1' do
      let(:count) { 1 }
      it { should == [0] }
    end
  end
end
