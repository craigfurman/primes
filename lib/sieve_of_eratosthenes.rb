class SieveOfEratosthenes

  def generate_up_to(limit)
    numbers = 0.upto(limit).map { true }
    [0, 1].each { |i| numbers[i] = false }
    2.upto(limit) do |i|
      if numbers[i]
        multiple_of_i = i
        while multiple_of_i + i <= limit do
          multiple_of_i += i
          numbers[multiple_of_i] = false
        end
      end
    end
    numbers.each_with_index.map { |prime, i| prime ? i : false }.select { |e| e }
  end

end
