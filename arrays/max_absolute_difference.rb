def maxArr(a)
  max_val = -1
  a.each_index do |i|
    j = i
    while j < a.length
      curr_val = (a[i] - a[j]).abs + (i-j).abs
      max_val = curr_val if curr_val > max_val
      puts "i: " + i.to_s + "j: " + j.to_s + "val: " + curr_val.to_s
      j+=1
    end
  end

  return max_val

end

### |ai - aj| + |i-j| = ai - aj + i - j , -ai + aj - i + j , ai - aj - i + j  , -ai + aj + i - j => (ai + i) - (aj + j) , -(ai + i) + (aj + j) , (ai - i) - (aj - j) , -(ai - i) + (aj - j)
### so we just need to find the min and max values for ai - i and ai + i

def maxArr_v2(a)
  neg_min = a[0]
  neg_max = a[0]
  pos_min = a[0]
  pos_max = a[0]
  a.each_with_index do |num, i|
    neg_min = [neg_min, num - i].min
    neg_max = [neg_max, num - i].max
    pos_min = [pos_min, num + i].min
    pos_max = [pos_max, num + i].max
  end

  return [neg_max - neg_min, pos_max - pos_min].max
end

input = [1, 3, -1]

puts maxArr(input)
