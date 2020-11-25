array = []
puts "Enter the 1st number: "
array << gets.to_i

puts "Enter the 2nd number: "
array << gets.to_i

puts "Enter the 3rd number: "
array << gets.to_i

puts "Enter the 4th number: "
array << gets.to_i

puts "Enter the 5th number: "
array << gets.to_i

puts "Enter the last number: "
last = gets.to_i

if array.include?(last)
  puts "The number #{last} appears in #{array}"
else
  puts "The number #{last} does not appear in #{array}"
end
