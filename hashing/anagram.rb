

def anagrams(words)
  hash = {}
  words.map! { |w| w.chars.sort_by(&:downcase).join }
  words.each_with_index do |word, i|
    if hash[word].nil?
      hash[word] = [i+1]
    else
      hash[word] << i+1
    end
  end

  return words.map { |w| hash[w]}.uniq
end


input = %w(cat dog god tca)
p anagrams(input)
