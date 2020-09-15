


def count_triangles(a)
  return 0 if a.empty? or a.length < 3
  a.sort!
  ans = 0
  
  (2..a.length-1).to_a.reverse.each do |k|
    i = 0
    j = k-1
    while i < j
      if a[i] + a[j] <= a[k]
        i += 1
      else
        require 'pry'; binding.pry
        ans = j - i
        j -= 1
      end
    end
  end
  
  return ans
end


input = [1,1,1,2,2]
p count_triangles(input)
