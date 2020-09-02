
def pretty_print(number)
  return [] if number == 0
  rows = (number * 2) - 1
  result_matrix = Array.new(rows) { Array.new(rows) }

  row = 0

  while row < number-1
    (row..number-1).each { |i| result_matrix[i][row] = number-row; result_matrix[i][rows - 1 - row] = number-row; result_matrix[rows - 1 - i][row] = number-row; result_matrix[rows - 1 - i][rows - 1 - row] = number-row}
    (row..number-1).each { |j| result_matrix[row][j] = number-row; result_matrix[rows - 1 - row][j] = number-row; result_matrix[row][rows - 1 - j] = number-row; result_matrix[rows - 1 - row][rows - 1 - j]= number-row}
    row += 1
  end

  result_matrix[number-1][number-1] = 1

    return result_matrix
end

