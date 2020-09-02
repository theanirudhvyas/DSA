
def find_mid(number, start, fin)
  mid = (start + fin)/2
  mid_sq = mid*mid

  require 'pry'; binding.pry
  if mid_sq == number or (mid_sq < number and (mid+1)**2 > number)
    return mid
  elsif mid_sq > number
    return find_mid(number, start, mid-1)
  else
    return find_mid(number, mid+1, fin)
  end
end


def find_sq_root(number)
  start = 0
  fin = 46341

  find_mid(number, start, fin)
end

input = 2147483647

puts find_sq_root(input)
