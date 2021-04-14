# Determine if a word or phrase is an isogram.

# An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter,
#   however spaces and hyphens are allowed to appear multiple times.

# Examples of isograms:

# lumberjacks
# background
# downstream
# six-year-old

# The word isograms, however, is not an isogram, because the s repeats.

# Your Job
# Define a class called String with a class method called isogram? that accepts one String argument, and returns true or false.

# Example

#   String.isogram?("eleven") # => false
#   String.isogram?("subdermatoglyphic") # => true

class String
  def self.isogram?(word)
    w = word.downcase.gsub(/[^0-9a-z ]/i, '')
    "abcdefghijklmnopqrstuvwxyz".chars.each do |letter|
      if w.count(letter) > 1
        return false
      end
    end
    return true
  end
end
