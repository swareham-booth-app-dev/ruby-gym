# We have a program to encode our messages, now can you write a way to decode them? 
# Remember our sercret code: a = 1, e = 2, i = 3, o = 4, u = 5.  
# Your program should:
# - ask for an encoded message
# - decode the message
# - print the decoded message.

# (Make sure to capitalize the first word in the decoded message)

#p "Enter in the secret you want to decode"
input = gets.chomp
text = input.gsub("1", "a")
text = text.gsub("2", "e")
text = text.gsub("3", "i")
text = text.gsub("4", "o")
text = text.gsub("5", "u")
p text.capitalize