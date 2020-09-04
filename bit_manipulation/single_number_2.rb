
def single_number(array)
  bin_array = array.map { |num| "%032B" % num }
  result = ""
  (0..31).each do |i|
    result << ((bin_array.reduce(0) { |sum, num_bits| sum += num_bits[i].to_i }) % 3).to_s
  end
  return result.to_i(2)
end

def single_number_v2(array)
  result = ""
  (0..31).each do |i|
    result << ((array.reduce(0) { |sum, num| sum += (num >> i & 1) }) % 3).to_s
  end
  return result.reverse.to_i(2)
end

# https://www.interviewbit.com/problems/single-number-ii/
