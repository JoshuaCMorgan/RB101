# In the calculator flowchart, we see an operation to check
# the validy of input numbers and operator.

prompt("What's the first number?")
number1 = Kernel.gets().chomp()

prompt("What's the second number?")
number2 = Kernel.gets().chomp()

prompt("what operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

# the visual in the flowchart tells us this is a looping construct
# so we need to add a looping construct to our code.
# we also see a loop to the beginning if user wants to go again.

# First loop (and second)
number1 = ''  #so we can access variable outside the loop (variable scope)
loop do                                   #this is the first loop of flowchart.
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()       # number1 now is initialized because of loop

    if valid_number?(number1)             # Then we need to perform a check
      break                               # We need to create method for validity
    else
      prompt("Hmm...That doesn't look like a valid number.")
    end
  end

# Valid number method
# We just want to make sure when we call 'to_i' on the number, it doesn't equal zero.
# We don't want zero because we know that the method will return zero
# for starting characters that are non-numeric (ex: "hi.to_i => 0")
# Problem: "0.to_i => 0" as well.  Fine for now.

def valid_number?(num)
  num.to_i() != 0
end
