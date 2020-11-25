# In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#see if "Spot" is present.

#Bonus: What are two other hash methods that would work just as well for this solution?

p ages.fetch("Spot", "Spot is not present")

#bonus
p ages.any? {|name, age| name == "Spot"}
p ages.any?("Spot")
p ages.key?("Spot")
p ages.include?("Spot")
p ages.member?("Spot")
