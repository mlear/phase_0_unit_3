# U3.W8-9: Triangle Debugger


# I worked on this challenge with Zach Pflededer.


# 1. Original Solution

def valid_triangle?(a, b, c)
  sum = 0

  if a != 0 || b != 0 || c != 0
    if a >= b
      largest = a
      sum += b
    else largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else sum += c
    end
    if sum > largest
      return true
    else return false
    end
    else return false
  end
end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
#   - wrong number of arguments (expected 3 got 4)
# * what is the exact line number the error is appearing?
#   - Appeared on line 8
# * before you fix the bug, what do you think is causing the error?
#   - method wasn't getting the right number of arguments. Duh.

# --- Bug 2 ---
# * what is the exact description of the error?
#   - not returning false with an argument equal to 0
# * what is the exact line number the error is appearing?
#   - line 20
# * before you fix the bug, what do you think is causing the error?
#   - if statement was returning a string instead of a boolean value

# --- Bug 3 ---
# * what is the exact description of the error?
#   - valid triangle should return false for any impossible triangle
# * what is the exact line number the error is appearing?
#   - line 46
# * before you fix the bug, what do you think is causing the error?
#   - if statement was returning a string instead of a boolean value


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  sides = [a, b, c]
  return false if sides.any? { |x| x==0 }
  sides.sort!
  sides[0] + sides[1] >= sides[2]? true : false
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection 

# The hardest part of this one for me was trying to remember how the triangle test wored and what exactly it was we were looking for.
# I haven't looked back yet, but I know that this refactor is MUCH cleaner then my original through socrates.  Zach, as always, was
# was a pleasure to work with.