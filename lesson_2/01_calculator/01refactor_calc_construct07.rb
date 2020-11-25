# This is messy and long message
prompt("what operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
  operator = Kernel.gets().chomp()


# we can clean it up with this:

operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
MSG

prompt(operator_prompt)

# Now, we need a way to convert the input to a present participle
# A method can do this.


def operation_to_message(op)
  case op                     #because 'case' statement is last expression,
  when '1'                  # its return value will be returned.
      'Adding'
    when '2'
      'Subtracting'
    when'3'
      'Multiplying'
    when '4'
      'dividing'
  end
end

# we call the method and pass in the selected operator
# This will convert 1,2,3, or 4, into a string which will be evaluated
# and displayed to the user in the present participle form.
prompt("#{operation_to_message(operator)} the two numbers...")
