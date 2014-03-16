$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'multiplication_table'
require 'table_presenter'

# comment/uncomment to use prime numbers as sequence
require 'sieve_of_eratosthenes'
sequence_generator = SieveOfEratosthenes.new

# comment/uncomment to use fibonacci numbers as sequence
# require 'fibonacci_numbers'
# sequence_generator = FibonacciNumbers.new

multiplication_table = MultiplicationTable.new
table_presenter = TablePresenter.new(multiplication_table, $stdout)

first_10_in_sequence = sequence_generator.generate_sequence(10)
table_presenter.present(first_10_in_sequence, first_10_in_sequence)
