# Write a program that
#   asks the user for a secret message
#   and 'encode's the message by replacing vowels with other characters
#   Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5

# Your program should print the encoded message.

#p "Enter in the secret you want to encode"
input = gets.chomp

text = input.gsub("a", "1")
text = text.gsub("e", "2")
text = text.gsub("i", "3")
text = text.gsub("o", "4")
text = text.gsub("u", "5")
text = text.gsub("A", "1")
text = text.gsub("E", "2")
text = text.gsub("I", "3")
text = text.gsub("O", "4")
text = text.gsub("U", "5")
p text