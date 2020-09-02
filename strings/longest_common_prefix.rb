
def longest_common_prefix(str_array)

  prefix_len = 0

  loop do
    break unless str_array.map { |str| str[0..prefix_len] == str_array[0][0..prefix_len] }.all?
    prefix_len += 1
  end

  return "" if prefix_len.zero?

  return str_array[0][0..prefix_len-1]
end
