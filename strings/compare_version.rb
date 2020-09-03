
def compare_version(v1, v2)
  v1_array = v1.split('.')
  v2_array = v2.split('.')

  len_max = [v1_array.length, v2_array.length].max

  (0..len_max-1).each do |i|
    v2_array[i] = 0 if v2_array[i].nil?
    v1_array[i] = 0 if v1_array[i].nil?
    return 1 if v1_array[i].to_i > v2_array[i].to_i
    return -1 if v1_array[i].to_i < v2_array[i].to_i
  end

  return 0
end

# https://www.interviewbit.com/problems/compare-version-numbers/
