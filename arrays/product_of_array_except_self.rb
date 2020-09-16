
def product_except_self(nums)
  output = []
  prod = 1
  prefix_array = [1]
  (1..nums.length - 1).each do |i|
    prefix_array << (prefix_array[i-1] * nums[i-1])
  end
  suffix_array = [1]
  (0..nums.length - 2).to_a.reverse.each do |i|
    suffix_array << (suffix_array[nums.length - i - 2]*nums[i+1])
  end
  
  require 'pry'; binding.pry
  (0..nums.length - 1).each do |i|
    output << prefix_array[i] * suffix_array[i]
  end
  output
end



input = [1,2,3,4]

p product_except_self(input)
