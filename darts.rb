# Write a program that prints the earned points of a single toss of a Darts game.

# Darts is a game where players throw darts to a target.

# In our particular instance of the game, the target rewards with 4 different amounts of points,
#  depending on where the dart lands.

# If the dart lands:
#  outside the target: 0 points.
#  in the outer circle of the target: 1 point.
#  in the middle circle of the target: 5 points.
#  in the inner circle of the target: 10 points.
#  The outer circle has a radius of 10 units
#    (This is equivalent to the total radius for the entire target),
#    the middle circle a radius of 5 units, and the inner circle a radius of 1.
#    They are all centered to the same point (That is, the circles are concentric) defined by the coordinates (0, 0).

# Write a program that asks for a point in the target
#  (defined by its real Cartesian coordinates x and y),
#  prints the correct amount earned by a dart landing in that point.

# Example

#  "Enter X,Y coordinates in the format 'X,Y'"
#  10,10
#  0 points

# Hint: the formula to find a circle with the center point (j, k) and radius (r):
#     (x-j)^2 + (y-k)^2 = r^2

p "Enter X,Y coordinates in the format 'X,Y'"
text = gets.chomp
split = text.split(",")
x = split[0].to_f
y = split[1].to_f

distance = (x**2 + y**2)**0.5

if distance <= 1
  points = 10
elsif distance <= 5
  points = 5
elsif distance <= 10
  points = 1
else 
  points = 0
end
p points.to_s + " points"
