# Shorten this sentence:

advice = "Few things in lifeh are as important as house training your pet dinosaur."

# ...remove everything starting from "house".
#
# Review the String#slice! documentation,
# and use that method to make the return value
# "Few things in life are as important as ".
# But leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

# slice!(integer, integer) → new_str or nil
# Since we want the first part to be the returned value, that's what we will slice
# we will start at zero.  The quick way to figure where to end is
# to use #index.  #index asks for the substring. But we don't want the first
# occurance.  So, it's good to put in the word
p advice.slice!(0, advice.index('house'))
