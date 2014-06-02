# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself].

# 2. Pseudocode

# create a instance method called area that will return the area of the Rectangle
# create a instance method called perimeter that will return the perimeter of the Rectangle
# create a instance method called diagonal that will return the diagnoal of the Rectangle
# create a instance method called square? that will return a boolean



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	return @width * @height
  end

  def perimeter
  	return (@width + @height)*2
  end

  def diagonal
  	return Math.sqrt( (@width**2) + (@height**2) )
  end

  def square?
  	return (@width == @height)
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end




# 4. Refactored Solution

# nothing to refactor here




# 1. DRIVER TESTS GO BELOW THIS LINE

#didn't have the change to do the tests as I was doing this as review last minute on sunday night at 9pm




# 5. Reflection 

# this one was pretty straight forward and didn't really give me a challenge beyond dusting the cobwebs off of basic math. 
# not really sure what the def==(other) is doing there, but everything works that is being asked of me, so I am moving on for
# now.