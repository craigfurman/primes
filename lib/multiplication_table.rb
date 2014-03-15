class MultiplicationTable
  def product_table(top, left)
    left.map do |left_number|
      top.map do |top_number|
        top_number * left_number
      end
    end
  end
end
