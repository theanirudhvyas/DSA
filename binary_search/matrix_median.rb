

def find_num(array, num, start, fin)
  mid = (start + fin) / 2
  while start <= fin
    if array[mid] == num
      return mid
    elsif array[mid] > num and mid > 0 and array[mid-1] < num
      return mid
    elsif array[mid] < num and mid < array.length - 1 and array[mid+1] > num
      return mid
    elsif array[mid] > num
      return find_num(array, num, start, mid-1)
    else
      return find_num(array, num, mid+1, fin)
    end
  end
  return -1
end


def calculate_numbers_before(array, num)
  index = find_num(array, num, 0, array.length - 1)
  if index == -1
    if num > array.last
      return array.length
    else
      return 0
    end
  else
    return index
  end

end


def find_median(matrix)

  matrix.each do |row|
    row.each do |number|
      num_before = matrix.map{|row| calculate_numbers_before(row, number)}.reduce(:+)
      if num_before == (matrix.length * matrix[0].length)/2
        return number
      end
    end
  end
  require 'pry'; binding.pry
end


input = [ [1, 3, 5],
        [2, 6, 9],
        [3, 6, 9]]

input_2 = [[1, 17, 53]]

input_3 = [
  [2],
  [1],
  [4],
  [1],
  [2],
  [2],
  [5]
]

puts find_median(input_3)
