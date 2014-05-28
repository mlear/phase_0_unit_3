# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_reps = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest_reps.each { |rep, years| puts "#{rep} - #{years}" } #Added in a new variable to pull in from the database to create a hash instead of array.
end

def print_lowest_grade_level_speakers(grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{grade_level}th grade)"
  lowest_speakers = $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < #{grade_level}")
  lowest_speakers.each { |rep, years| puts "#{rep} - #{years}...  Seriously." }
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_state_reps(state_initials) #Decided to make this generic so that you could do any state you wanted.  Then realized that the exercise meant for you to pull them all... left this in anyways.
  puts "#{state_initials} REPRESENTATIVES"
  state_reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state_initials}'")
  state_reps.each { |rep| puts rep }
end

def print_state_reps_redo #there we go... at least I think thats what they wanted, I sorted them as well!
  puts "AK, FL, ME, NJ, NY REPRESENTATIVES"
  all_reps = $db.execute("SELECT name, location FROM congress_members WHERE location = 'NJ' OR location = 'NY' OR location = 'ME' OR location = 'FL' OR location = 'AK'")
  all_reps.sort_by!{|x| x[1]}
  all_reps.each { |rep, state| puts "#{rep} - #{state}" }
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator

print_state_reps("NY")
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)

print_separator

print_state_reps_redo

##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# well, we would just want to set any argument that's being passed in, equal to a variable first, and not send it directly into the code.  At least I think that will fix it!

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.

# The sqlite3gem allows for ruby to use sqlite3 to navigate databases.  $db is almost holding open a terminal for sql SELECT
# statements to be passed into.  The the .execute is telling the datebase to run whatever select statement is folling on the database
# and to return a value.  For example "$db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}")""
# is telling the congress_poll_results database to select the name from the congress_members table where minimum years that is being provided
# is larger than the amount in the years_in_congress column.  It will return only those names as an array to the ruby
# program.