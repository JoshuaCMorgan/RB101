  # to simplify messages
# Instead of this:
Kernel.puts(" => Welcome to Calculator")

Kernel.puts("=> What's the first number?")
number1 = Kernel.gets().chomp()

# we can extract to a method
# and have that method be in charge of formatting the prompt.


def prompt(message)
  kernel.puts("=> #{message}")
end

# Now, when we need to output something to the user,
# we can use this method. For example,

def prompt(message)
  kernel.puts("=> #{message}")
end

prompt("Welcome to Calculator!")


prompt("What's the first number?")
number1 = Kernel.gets().chomp()

prompt("What's the second number?")
number2 = Kernel.gets().chomp()
