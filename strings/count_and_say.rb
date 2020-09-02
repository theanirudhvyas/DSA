
def count_and_say(number)
  return "0" if number == 0
  return "1" if number == 1
  str = "11"

  (number-2).times do
    
    str = str.scan(/1+|2+|3+|4+/).map do |chars|
      count = chars.length
      count.to_s + chars[0]
    end.join
  end
  return str

end

# https://www.interviewbit.com/problems/count-and-say/
