class TablePresenter
  def initialize(multiplication_table, output)
    @multiplication_table = multiplication_table
    @output = output
  end

  def present(top, left)
    table = @multiplication_table.product_table(top, left)
    table_string = ' ' + top.join(' ') + "\n"
    table_string += left.each_with_index.map { |left_number, index| left_number.to_s + ' ' + table[index].join(' ') }.join("\n")
    @output.puts(table_string)
  end
end
