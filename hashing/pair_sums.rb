

def pair_sums(array, k)
  hash = {}
  hash.default = 0
  array.each { |num| hash[num] += 1 }

  result = 0
  hash.keys.each do |key|
    if hash[k - key]
      if key == k - key
        result += (hash[key] * (hash[key] - 1))
      else
        result += hash[key] * hash[k - key]
      end
    end
  end

  result/2
end


input =  [1, 5, 3, 3, 3]
k = 6

p pair_sums(input, k)


# https://www.facebookrecruiting.com/portal/coding_practice_question/?problem_id=840934449713537
