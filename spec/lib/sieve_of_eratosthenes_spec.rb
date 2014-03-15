require 'sieve_of_eratosthenes'

describe SieveOfEratosthenes do
  let(:generator) { described_class.new }
  let(:limit) { 100 }
  let(:primes_to_100) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97] }

  describe '#generate_up_to' do
    subject { generator.generate_up_to(limit) }

    it { should == primes_to_100 }
  end
end
