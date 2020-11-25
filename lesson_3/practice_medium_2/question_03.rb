# def color_valid(color)
#   if color == "blue" || color == "green"
#   else
#     false
#   end
# end
#
# color_valid("blue")

def color_valid(color)
 color.match?("blue" || "green")
end

p color_valid("green")
