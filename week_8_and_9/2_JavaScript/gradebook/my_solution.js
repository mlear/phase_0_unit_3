/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself, with:]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// function average(array_of_numbers) {
//   var ave = 0;
//   for (var x = 0; x < array_of_numbers.length; x++) { 
//     ave += array_of_numbers[x]; 
//   }
//   ave = ave/(array_of_numbers.length)
//   return(ave)
// }

// var gradebook = {}

// students.forEach(function(name) {
//   gradebook[name] = {}
// })

// gradebook.Joseph.testScores = scores[0]
// gradebook.Susan.testScores = scores[1]
// gradebook.William.testScores = scores[2]
// gradebook.Elizabeth.testScores = scores[3]

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score)
// }

// gradebook.getAverage = function(name) {
//   return average(gradebook[name].testScores)
// }


// __________________________________________
// Refactored Solution

function average(array_of_numbers) {
  var ave = 0;
  for (var x = 0; x < array_of_numbers.length; x++) { 
    ave += array_of_numbers[x]; 
  }
  return(ave/(array_of_numbers.length))  
}

var gradebook = {}

students.forEach(function(name) {
  gradebook[name] = {}
})

count=0
students.forEach(function(name) {
  gradebook[name].testScores = scores[count];
  count++;
})

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score)
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)
}


// __________________________________________
// Reflect

// so I got completely frustrated at one point with assigning the testScores to the names, I couldn't figure out what the heck
// I was doing wrong, and gave up for a night.  Came back the next day, assigned all the testScores manually and moved on.
// As soon as I did the addScore function, I realized that I was trying to add the testScores by calling on gradebook.name.testScores
// (which you can't do) instead of gradebook[name].testScores.  Won't make that mistake again!  I still feel like I can refactor
// this some more, the average function just looks clunky to me and I feel like I can make it cleaner.  


// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)