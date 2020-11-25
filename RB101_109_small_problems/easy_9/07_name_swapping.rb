def swap_name(string)
  first_name, last_name = string.split
  "#{last_name}, #{first_name}"
end

# Alternative
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
