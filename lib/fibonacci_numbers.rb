class FibonacciNumbers
  def generate_sequence(fibonacci_count)
    numbers = [0, 1]

    return numbers.slice(0, fibonacci_count) if fibonacci_count < 2

    while numbers.count < fibonacci_count do
      numbers << numbers[-1] + numbers[-2]
    end
    numbers
  end
end
