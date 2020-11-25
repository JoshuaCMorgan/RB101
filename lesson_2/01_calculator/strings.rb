# String#to_i
#  to_i(base=10) → integer

# Returns the result of interpreting leading characters
 # in str as an integer base base (between 2 and 36).

"12345".to_i             #=> 12345

 # Extraneous characters past the end of a valid number are ignored.
 "99 red balloons".to_i   #=> 99
 "0a".to_i                #=> 0

 # If there is not a valid number at the start of str, 0 is returned.
"hello".to_i             #=> 0

 # This method never raises an exception when base is valid.


 # String#to_f
 # to_f → float

#  Returns the result of interpreting leading characters
#  in str as a floating point number.

#  Extraneous characters past the end of a valid number are ignored.
"123.45e1".to_f        #=> 1234.5
"45.67 degrees".to_f   #=> 45.67

#  If there is not a valid number at the start of str, 0.0 is returned.
"thx1138".to_f         #=> 0.0

#  This method never raises an exception.
