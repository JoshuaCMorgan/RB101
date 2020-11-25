# Ask for another operation
# flowchart shows this loop envelopes the entire process
# if user types 'y' we will loop again, otherwise end the program.
# We will capture the answer
# we will break unless the answer starts with y
# then give goodbye message

loop do #main loop
  # previous code

  prompt("The result is #{result}")

    prompt("Do you want to perform another calulation? (Y to calculate again)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
  end

    prompt("Thank you for using Calculator!")
end
