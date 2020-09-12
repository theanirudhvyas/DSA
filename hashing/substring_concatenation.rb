




# https://www.interviewbit.com/problems/substring-concatenation/


def permutations(curr, visited, array, result)
  if curr.length == array.length
    result << curr.dup
  end

  (0..array.length - 1).each do |i|
    unless visited[i]
      curr << array[i]
      visited[i] = true
      permutations(curr, visited, array, result)
      visited[i] = false
      curr.pop
    end
  end
end

def permute(array)
  result = []
  visited = []
  curr = []

  permutations(curr, visited, array, result)
  result = result.map { |res| res.join }
end

def match_string(string, subs)
  length = subs.length
  (0..string.size - length).select { |i| string[i..i+length-1] == subs }
end

def subarray_indices(string, list)
  all_permutations = permute(list)

  result = all_permutations.map { |subs| match_string(string, subs)}
  result.uniq!
  res = []
  result.each do |i|
    res << i if i
  end
  res.flatten
end



############################################## V2

def subarray_indices_v2(string, words)
  words_hash = {}
  words_hash.default = 0
  result = []
  words.each { |word| words_hash[word] += 1 }

  word_length = words[0].length
  total_subs_length = word_length * words.length

  (0..string.length - total_subs_length).each do |i|
    seen = {}
    seen.default = 0
    (i..i + total_subs_length - word_length).step(word_length).each do |j|
      seen[string[j..j+word_length - 1]] += 1
    end
    substr = words.map { |word| words_hash[word] == seen[word] }.all?
    result << i if substr
  end
  result
end

input = "barfoothefoobarman"
list = ["foo", "bar"]

p subarray_indices_v2(input, list)
