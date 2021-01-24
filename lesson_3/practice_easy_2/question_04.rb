# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.match?('Dino')

# This is not a perfect solution, as it would match any substring with Dino in it.
# But its suffice for this place in Launch School learning.
