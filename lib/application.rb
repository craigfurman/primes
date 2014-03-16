$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'sieve_of_eratosthenes'
require 'multiplication_table'
require 'table_presenter'

prime_generator = SieveOfEratosthenes.new
multiplication_table = MultiplicationTable.new
table_presenter = TablePresenter.new(multiplication_table, $stdout)

first_10_primes = prime_generator.generate_primes(10)
table_presenter.present(first_10_primes, first_10_primes)
