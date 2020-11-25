# Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

#Example:
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip? (Percent: 0 to 100)"
tip_percent = to_f/100
tip_amount = tip_percent * bill
total_bill = bill + tip_amount
puts "The tip is #{tip_amount}"
puts "The total bill is #{total_bill}"
