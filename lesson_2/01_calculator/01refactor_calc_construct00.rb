# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the results

# Use the Kernel.gets() method to retrieve user input,
# and use Kernel.puts() method to display output.

#answer = Kernel.gets()
#Kernel.puts(answer)

# New line character
# It's important to where to put the .chomp() method.
# You can append it to the number itself. One time deal.

Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number?")
number1 = Kernel.gets()
Kernel.puts(number1.chomp().inspect())
Kernel.puts("the number is: " + number1 + "!")

# You can appended to .gets() if you know you want it taken off throughout your program

Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()
Kernel.puts(number1.inspect())
Kernel.puts("the number is: " + number1 + "!")

# Now, we move to get the other number. But also, we ask what operation.
# And we capture the answer in `operator`


Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("what operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()
# Be sure to recognize that inputs are string representations "get string"
# Understand that integer division includes floats
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
