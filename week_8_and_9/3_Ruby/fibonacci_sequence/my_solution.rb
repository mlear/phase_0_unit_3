# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode: I need to create a method here that will check on whether or not a given number is in the fibonacci sequence
# => I first need to do a little math review to find the equation for the number that is in the sequence
# => then I will code the equation to allow for the number to be pased through the math and return a true or false boolean.



# 3. Initial Solution

# def is_fibonacci?(num)
#   fib_check_low = (5*num*num-4)
#   fib_check_high = (5*num*num+4)
#   
#   x=Math.sqrt(fib_check_low).to_i
#   square_check_low = (x*x==fib_check_low)
#   
#   y=Math.sqrt(fib_check_high).to_i
#   square_check_high = (y*y==fib_check_high)
#   
#   return square_check_low || square_check_high
# end



# 4. Refactored Solution

## So my initial solution did not work, apparently the numbers just get to big for math.sqrt to handle correctly and it was returning false, so in my refactored solution, I will need to define a submethod that calculates the square root.  The submethod is basically a bit of arithmetic that will find the integer square root of a number.   

# def is_fibonacci?(num)
#   fib_check_low = (5*num*num-4) #If a number is part of the sequence, it must be a perfect square of this or of the variable listed beneath this.
#   fib_check_high = (5*num*num+4)
  
#   def persqrt(num)  #This is not taking the sqrt of the fib number, but of the fib_check number.
#    x = num
#    loop do
#      y = ((x + num/x)/2)
#      if y < x
#        x = y
#      else
#        return x
#      end
#    end
#   end
  
#   x=persqrt(fib_check_low)
#   square_check_low = (x*x==fib_check_low) #This is checking to see if the integer returned is the actual square root of the fib_check.
  
#   y=persqrt(fib_check_high)
#   square_check_high = (y*y==fib_check_high)
  
#   return square_check_low || square_check_high
# end

#refactored in other method

def is_fibonacci?(num)  #thanks to Hing for inspiration on this solution.  
	fib_seq = [0,1] #setting the base numbers in the sequence
	while num >= fib_seq[fib_seq.length-1] #setting the loop so it continues until the last number in the seq is greater or equal to the input
		fib_seq.push(fib_seq[fib_seq.length-1] + fib_seq[fib_seq.length - 2]) #with each loop, pushs the new value into the array
	end
	fib_seq.include?(num)
end


# 1. DRIVER TESTS GO BELOW THIS LINE
def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

puts is_fibonacci?(5)

puts is_fibonacci?(random_fibonacci)

puts is_fibonacci?(8670007398507948658051921)

puts is_fibonacci?(random_fibonacci+100)

puts is_fibonacci?(927372692193078999171)




# 5. Reflection 

# I still have some work to do with the refactoring, I think the loop can be done better here.  I always like coding mathmatical
# equations into a program, its a great feeling when things run as planned!  I have seen the other way to do this as well, 
# which is to create an array of fibonacci numbers up to the number you are looking for and then to call a .include on the
# resulting array.  I'm not sure which one is faster/better.  That way works better with looping and iterating, but for some
# reason, the math of this method appeals to me.  It feels like the program is doing less work here becuase it is actually
# testing a given number instead of building the a new sequence each time a number is to be checked.  But when I think about
# it, the complexity of the math is so much less if you arn't taking the squares of numbers.  I will have to run some tests
# with the rspec to see which is the better solution.

# UDPATE - so I refactored in the other method after seeing Hing's solution, and it works MUCH faster then the algebraic
# solution.  I personally like the idea of the math more then the brute force of the loop, but you just cannot ignore the speed!