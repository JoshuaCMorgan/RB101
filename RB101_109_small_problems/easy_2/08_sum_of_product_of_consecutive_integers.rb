def compute_sum(number)
  (1..number).inject {|sum, i| sum + i}
end

def compute_product(number)
  (1..number).inject {|sum, i| sum * i}
end
puts "Please enter an integer greater than 0"
number = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
process = gets.chomp



if process == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}"
elsif process == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}"
else
  "Sorry, enter either 's' or 'p'"
end
