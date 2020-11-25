puts "Please write a word or multiple words:"
input = gets.chomp

num_of_chars = input.split.join.size
puts "There are #{num_of_chars} characters in \"#{input}\"."

#alternative
num_of_chars = input.delete(' ').size
