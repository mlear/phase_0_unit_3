# U3.W8-9: Reverse Words


# I worked on this challenge [with: Hing Huynh ].

# 2. Pseudocode
# Split the string input into an array at each space found.
# Use the string reverse method to reverse each string.
# Join the resulting array back into a single string with spaces.
# Return the string.


# 3. Initial Solution

def reverse_words(string)
  array_of_strings = string.split(' ').to_a
  array_of_strings.map! { |string| string.reverse }
  array_of_strings.join(' ')
end

# 4. Refactored Solution

def reverse_words(string)
    string.split(' ').to_a.map! { |string| string.reverse }.join(' ')
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert(statement = "Assertion failed!")
  raise statement unless yield
end

assert { reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB" }
assert { reverse_words("") == "" }
assert { reverse_words("word") == "word".reverse }
word1 = "word"
word2 = "drow"
assert { reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}" }

# 5. Reflection 

# Not much to say about this exercise, we flew through it, wasn't much of a challenge.  It was a nice warm up to before moving
# on to something more difficult.