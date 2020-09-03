
def count_1_bits(number)
  number.to_s(2).scan(/./).reduce(0) {|sum, bit| sum += bit.to_i}
end
