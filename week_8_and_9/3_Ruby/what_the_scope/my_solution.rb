# U3.W8-9: What the Scope


# I worked on this challenge [with: Hing Huynh ].

# 1. What are the problems in the error messages?
# There are no error messages to start with.
# it would be really nice to have an rspec here.
# and var_9 needs to be assigned...


# 2. Original Code

# $var_1 = 22
 
# class Person
#   @@var_2
#   VAR_6 = "Ruby"
 
#   attr_reader :var_3, :var_4
 
#   def initialize(var_5 = VAR_6)
#     @var_3="Law of Demeter"  
#   end
 
#   def do_stuff(var_7=[1,2,3])
#     var_7.each do |var_8|
#       var_9 += var_8 + 2
#     end
#   end
# end

# 3. Modified Code (with scope identified as comments)

$var_1 = 22  #var_1 is assigned as a global variable.
 
class Person
  @@var_2  #Class variable that will be the same in each new instance of the class.
  VAR_6 = "Ruby"  #Constant Variable assigned a string of "Ruby"
 
  attr_reader :var_3, :var_4 #allows the access of instance variables outside of the class.
 
  def initialize(var_5 = VAR_6) #sets var_5 to a default value of VAR_6 if no argument is given.
    @var_3="Law of Demeter"  #set the instance variable var_3 equal to a string.
  end
 
  def do_stuff(var_7=[1,2,3]) #var_7 is a default array of integers limited to this intance method
    var_9 = 0 #var_9 sets a local variable equal to zero so that we can begin to sum the array
    var_7.each do |var_8| #var_8 is being used to define the value inside of the array at each element.
      var_9 += var_8 + 2
    end
    return var_9
  end
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

martin = Person.new()
martin.do_stuff()

def assert(statement = "Assertion failed!")
  raise statement unless yield
end

assert { martin.var_3 == "Law of Demeter" }
assert { martin.var_4 == nil }
assert { martin.do_stuff == 12 }
assert { martin.do_stuff([4,5,6]) == 21 }


# 5. Reflection 

# => This was really tough to do at first until we realized that we didn't NEED to know what the intent of this code was.  So far all
# => of our exercises have given us a "desired" output, something that we were trying to get too.  Once we stopped thinking in
# => those terms and instead just described what each variable was for and made sure it ran without error, it went smoothly.