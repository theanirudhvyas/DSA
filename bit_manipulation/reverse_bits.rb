
def reverse_bits(a)
  bit_array = "%032b" % a

  return bit_array.reverse.to_i(2)
end

# https://www.interviewbit.com/problems/reverse-bits/
