def word_sizes(string)
  hash_results = Hash.new(0)
  string.split.each do |word|
    word = word.delete('^a-zA-Z')
    hash_results[word.size] += 1
  end
  p hash_results
end
word = "what's"
p word.delete('^a-z')
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
