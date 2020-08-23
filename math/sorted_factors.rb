
def sorted_factors(number)
  num_sqrt = Math.sqrt(number).to_i
  res = []
  (1..num_sqrt).each do |num|
    if (number%num == 0)
      res << num
      comp_num = number/num
      res << comp_num if comp_num != num
    end
  end
  return res.sort
end

pp sorted_factors(10)
