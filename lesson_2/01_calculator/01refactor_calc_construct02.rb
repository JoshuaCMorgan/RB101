# Instead of this:
prompt("what operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() + number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end
prompt("The result is #{result}")

# THIS:
# refactor the 'if' statement to a 'case' statement
# We are doing a condition of 'operator' at least 3 times.  It's repetative.
# We can use 'case' statement and capture the return value in one variable assignment.

result = case operator
          when '1'
            number1.to_i() + number2.to_i()
          when '2'
            number1.to_i() - number2.to_i()
          when '3'
            number1.to_i() * number2.to_i()
          when '4'
            number1.to_i() / number2.to_i()
  end

  
