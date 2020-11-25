def palindromic_number?(number)
p number.to_s == number.to_s.reverse
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

# Using other created methods
def palindrome?(string)
string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end
