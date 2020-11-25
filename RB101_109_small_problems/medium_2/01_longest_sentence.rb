text = File.read("sample_txt.txt")

p split_at_punctuation = text.split(/(\.|\?|\!)/)
p sentences = split_at_punctuation.each_slice(2).to_a.map {|pair| pair.join}

sentences_split = sentences.map {|sentence| sentence.split}

p sentences_split
largest_sentence = []
largest_size_count = 0
sentences_split.each do |sentence|
  sentence_size = sentence.count
  if sentence_size > largest_size_count
    largest_size_count = sentence_size
    largest_sentence = sentence
  end
end


# Alternative
text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
