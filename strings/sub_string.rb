
def sub_string(sub, string)
  return -1 if sub.empty? or string.empty?
  return 0 if sub == string
  (0..string.length - sub.length - 1).each do |i|
    return i if sub == string[i..(i+sub.length)]
  end

  return -1
end
