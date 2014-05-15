# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)



## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->  Twitter allows for you to assign a bankground picture, and user picture.  You choose a userid when you sign up that could relate to a primary id as only one user can have that @user_id.  There is a field for the name of the profile.  There is also a field for basic interests of the user.  The final two fields are for the user location and for the users website.



## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->  You are allowed 140 charactors of text and an option to add a picture.  The tweet will need to connect to a user id to associate it with the user profile.  It will also need its own id to be stored.  You are also allowed to mention other users, so you would probably need a new table to track all of the mentions as well and another field in the tweet table to index the mention.  That may be beyond this exercise though...



## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: <!-- because... -->  Its a one to many relationship.  Each user may tweet many times, but each tweet only has one creater.



## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->

<img src ="https://raw.githubusercontent.com/mlear/phase_0_unit_3/master/week_7/imgs/Twitter_schema.jpg">


## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

```sql

SELECT message FROM tweet WHERE user_id = (user_id)

SELECT message FROM tweet WHERE user_id = (user_id) and created_at BETWEEN '2014-05-07' and '2014-05-14'

SELECT message FROM user JOIN tweet ON (id=user_id) where user_handle=(user_handle)

SELECT user_handle from user JOIN tweet on (id=user_id) WHERE tweet_id = (tweet_id)

```

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->  I was a little confused here when we got to the SQL access statements.  The third one asks for all tweets associated with a user handle.  Does this mean all tweets "created" by a user handle?  Or all created tweets, and tweets were the user is mentioned?  So, I created another schema and completely confused myself building a new table for the mentions and trying to connect everything up.  I'll have to return to that later, but below is what I have come up with so far.  (I know its wrong.)

<img src ="https://raw.githubusercontent.com/mlear/phase_0_unit_3/master/week_7/imgs/Twitter_schema2.jpg">