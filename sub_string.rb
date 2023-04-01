def substrings(string, dictionary)
  string = string.downcase
  dictionary.each_with_object(Hash.new(0)) do |word, hash|
    hash[word] += string.scan(word).count if string.include?(word)
  end
end
