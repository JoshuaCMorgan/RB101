
def prompt(message)
  Kernel.puts("=> #{message}")
end

# Validate name
def validate_name()
  prompt("What is your name?")
  name = ''
  loop do
  name = gets.chomp
    if name.empty?
      puts "Please enter a valid name."
    else
      break
    end
  end
  name
end

def valid_number?(input)
  (input.to_i.to_s == input || input.to_f.to_s == input) && input.to_f > 0
end

# Get and validate get_number
def get_valid_number()
  input = ''
  loop do
    input = gets.chomp
    if valid_number?(input)
      break
    else
      prompt("please enter a valid number.")
    end
  end
  input
end

prompt("Welcome.  Let's calculate your mortgage payment")

name = validate_name()
prompt("Hello, #{name}")
#main program

loop do

  prompt("What is the amount of the loan? ex: 40000 for $40,000")
  loan_amount = get_valid_number().to_f
  prompt("what is the annual percentage rate? ex: 4.5 for 4.5%")
  apr = get_valid_number().to_f/100
  prompt("What is the duration of the loan? How many years?")
  loan_duration = get_valid_number().to_f

  # Calculations
  monthly_interest_rate = apr/12
  loan_duration_months = loan_duration * 12

  monthly_payment = loan_amount *
                    monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_duration_months))
  prompt("Your montly payment is.... #{monthly_payment}")

  prompt("Would like to make another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase.start_with?('y')

end

prompt("Thanks! Have a blessed day, #{name}")
