class SieveOfEratosthenes

  def generate_up_to(limit)
    numbers = initialise_number_line(limit)
    2.upto(limit) do |i|
      if numbers[i]
        eliminate_multiples_of_primes(numbers, i, limit)
      end
    end
    numbers.each_with_index.map { |prime, i| prime ? i : false }.select { |e| e }
  end

  def generate_sequence(number_of_primes)
    limit = 10
    primes = []
    while primes.count < number_of_primes do
      primes = generate_up_to(limit)
      limit *= 2
    end
    primes.slice(0, number_of_primes)
  end

  def nth_prime(n)
    generate_sequence(10)[n - 1]
  end

  private
  def initialise_number_line(limit)
    numbers = 0.upto(limit).map { true }
    [0, 1].each { |i| numbers[i] = false }
    numbers
  end

  def eliminate_multiples_of_primes(numbers, i, limit)
    multiple_of_i = i
    while multiple_of_i + i <= limit do
      multiple_of_i += i
      numbers[multiple_of_i] = false
    end
  end

end
