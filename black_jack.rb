# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"
input = gets.chomp
split = input.split(" ")
left = split[0].to_i
right = split[1].to_i

card_sum = left + right
if card_sum > 21
  if left == 11 or right == 11
    card_sum -= 10
  else
    card_sum = 0
  end
end
p card_sum.to_s