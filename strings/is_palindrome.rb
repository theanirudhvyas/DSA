
def is_palindrome?(string)
  sanitized_string = string.gsub(/[^a-zA-Z0-9]/, "").downcase
  len = sanitized_string.length

  start = 0
  fin = len - 1

  while start < len/2 and fin >= len/2
    return false if sanitized_string[start] != sanitized_string[fin]
    start += 1
    fin -= 1
  end
  return true
end


def is_palindrome_v2?(string)
  sanitized_string = string.downcase.delete('^a-z0-9')
  sanitized_string == sanitized_string.reverse ? true : false
end

# https://www.interviewbit.com/problems/palindrome-string/

