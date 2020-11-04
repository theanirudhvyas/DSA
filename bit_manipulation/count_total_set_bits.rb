

def total_set_bits(number)
  sum = 0
  (0..number).each do |num|
    (0..30).each do |i|
      sum += num >> i & 1
    end
  end

  return sum % (10**9 + 7)
end

def total_set_bits_v2(number)

  sum = 0
  (0..30).each do |i|
    sum += number / (2**i)
  end
end
