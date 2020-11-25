# Extracting messages in the program to a configuration file.

# There are lots of messages sprinkled throughout the program.
# Could we move them into some configuration file and access by key?
# This would allow us to manage the messages much easier,
# and we could even internationalize the messages.

# First, we need to extract the messages into a configuration file.
# Most Rubyists prefer the yaml format, so we'll use that.
# We'll extract our messages into a file called calculator_messages.yml.
# Make sure this file is created in the same directory
# as your calculator program.

#calculator_messages.yml
welcome: "Welcome to Calculator! Enter your name:"
valid_name: "Make sure to enter a valid name."

# ... rest of file omitted for brevity

# at the top of file

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Now, all we have to do is replace all hard-coded strings
# with the key in the MESSAGES hash.

# replace this:
prompt("Welcome to Calculator! Enter your name:")

# with this:
prompt(MESSAGES['welcome'])
