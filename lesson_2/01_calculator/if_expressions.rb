# In Ruby, if expressions can return a value

answer = if true
           'yes'
         else
           'no'
         end
Kernel.puts(answer)       # => yes

# From the walk-through:
# 'result' is initialized within the if statement.
# Local variables initialized within an if can be accessed outside of the if.
if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() + number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end
Kernel.puts("The result is #{result}")
