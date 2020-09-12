

def colorful_number? (number)
  hash = {}
  num_arr = []
  number.to_s.each_char do |c|
    num_arr << c.to_i
  end

  (0..number.to_s.length - 1).each do |bucket|
    (0..num_arr.length - 1 - bucket).each do |i|
      prod = 1
      (0..bucket).each do |j|
        prod *= num_arr[i+j]
      end
      if hash[prod]
        return false
      else
        hash[prod] = 1
      end
    end
  end

  return true
end

p colorful_number?(1234)


# https://www.interviewbit.com/problems/colorful-number/
