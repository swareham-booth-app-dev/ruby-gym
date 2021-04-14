# Most commonly, we define classes to represent things; those things have attributes; and we define instance methods to operate on those attributes and return useful values.

# Phrase
# Convert a phrase to its acronym.

# Techies love their TLA (Three Letter Acronyms)!

# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).
 
# Your Job
# Define a class called `Phrase` with:

# An attribute accessor called `body` which will store a String.
# An instance method called `abbreviate` that will return a String: the uppercase first letter of each word in the phrase.

# Examples

#   a = Phrase.new
#   a.body = "Portable Network Graphics"
#   a.abbreviate # => "PNG"

#   b = Phrase.new
#   b.body = "Complementary metal-oxide semiconductor"
#   b.abbreviate # => "CMOS"


class Phrase
  attr_accessor :body
  def abbreviate
    body_clean = body.gsub("-", " ")
    body_clean = body_clean.gsub(/[^0-9a-zA-Z ]/i, '')
    words = body_clean.split(" ")
    abbrv = ""
    words.each do |word|
      abbrv += word[0].upcase
    end
    return abbrv
  end
end
