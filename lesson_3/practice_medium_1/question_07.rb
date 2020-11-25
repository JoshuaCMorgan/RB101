# What is the output of the following code?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# My answer.  I like to 'write out every step'. Something I would encourage
# the high school students I supported when I was a teacher/tutor.
# Ruby works top down
# Ruby will execute line 8
# some_number now points to 42
new_answer = mess_with_it(42)
# show this in the method
# and expand the next line to make more explicit what's happening.
def mess_with_it(some_number = 42)
  some_number = some_number + 8
end

# show the next expression that Ruby will execute
def mess_with_it(some_number = 42)
  some_number = 42 + 8
end

# return value of executed expression.
def mess_with_it(some_number = 42)
  some_number = 50
end

# return value of method
def mess_with_it(some_number = 42)
  50
end

# Lets see this as a whole now.
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = 50

p answer - 8

# Now, it's pretty obvious what Ruby will print.
# As a beginner, there is power in wriing out each step when learning.
# So, what's happening when thinking like a programmer?
# In one sense, we worked with the variable `answer` inside the method.
# And, even brought it out from the method.  It is stored in 'new_answer'
# What this code uses for the expression to be printed is NOT
# what has been worked out with the method.  If we wanted to, it should
# have read "new_answer - 8"
