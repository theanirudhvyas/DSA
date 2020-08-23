
def rotate_matrix(matrix)
  res_matrix = []
  matrix.length.times {res_matrix << Array.new(matrix.length, 0)}
  matrix.each_with_index do |row, i|
    row.each_with_index do |num, j|
      res_matrix[j][matrix.length - i - 1] = num
    end
  end
  return res_matrix
end


def rotate_matrix_v2(matrix)

end

input = [
  [1, 2, 11, 12],
  [3, 4, 13, 14],
  [4, 5, 14, 15],
  [6, 7, 16, 17]
]

pp rotate_matrix(input)
