# add a name feature
# every time we have input, we need validation.
# use same construct

prompt("Welcome to Calculator! Enter your name: ")

name = ''         # we want to use variable later
loop do
  name = Kernel.gets().chomp()

  If name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")   #put outside loop so we don't keep running it.


# We need to do validation for the operator.
# We're not going to iterate over the big prompt.
# We just want to display the error message.
# That is, the loop will just be able to display the error message.
# That way, we display the big prompt just one time.

prompt("what operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")

operator = ''
loop do
  operator = Kernel.gets().chomp()

  if %w(1 2 3 4).include?(operator)  #input is string representation,
    break                             #so, we can have an array of strings.
  else
    prompt("Must choose 1, 2, 3, 4")
  end
end
