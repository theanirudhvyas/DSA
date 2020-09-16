
def encrypt_string(string)

  return "" if string.empty?
  return string if string.length == 1
  
  middle_char = (string.length - 1) / 2
  result = ""
  result += string[middle_char]
  result += encrypt_string(string[0..middle_char - 1]) if middle_char > 0
  result += encrypt_string(string[middle_char+1..-1]) if middle_char < string.length - 1
  
  result
end
def find_encrypted_string(s)  
  # Write your code here 
  
  encrypt_string(s)
end  

# Call find_encryped_string() with test cases here 

inputs = ["abc", "abcd", "abcxcba", "facebook" ]

inputs.each do |input|
  p find_encrypted_string(input)
end
