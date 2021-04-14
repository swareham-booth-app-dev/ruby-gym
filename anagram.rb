# Anagram - a word, phrase, or name formed by rearranging the letters of another.
#  For example, cinema is an anagram of iceman. 

# Your job is to write a program that receives two words from the user separated by a comma.
#  Your program should print "true" if the words are anagrams of each other and "false" if they are not. 

require 'set'

p "Enter two words separated by a comma"

user_words = gets.chomp.gsub(" ", "")
words = user_words.split(",")



are_anagrams = words[0].chars.sort == words[1].chars.sort
if are_anagrams
  p "true"
else
  p "false"
end