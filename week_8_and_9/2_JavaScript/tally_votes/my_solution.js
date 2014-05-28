// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge by myself.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Iterate over the votes to populate voteCount
// sort voteCount - will have to make an array as you can't sort an object
// assign officers based off the sorted voteCount


// __________________________________________
// Initial Solution

// for (var key in votes) {
//   var president = votes[key].president;

//   if (voteCount.president[president] === undefined) {
//     voteCount.president[president] = 1;
//   }
//   else {
//     voteCount.president[president] += 1;
//   }

//   var vicepres = votes[key].vicePresident;

//   if (voteCount.vicePresident[vicepres] === undefined) {
//     voteCount.vicePresident[vicepres] = 1;
//   }
//   else {
//     voteCount.vicePresident[vicepres] += 1;
//   }

//   var sec = votes[key].secretary;

//   if (voteCount.secretary[sec] === undefined) {
//     voteCount.secretary[sec] = 1;
//   }
//   else {
//     voteCount.secretary[sec] +=1;
//   }

//   var treas = votes[key].treasurer;

//   if (voteCount.treasurer[treas] === undefined) {
//     voteCount.treasurer[treas] = 1;
//   }
//   else {
//     voteCount.treasurer[treas] +=1;
//   }
// }

// for (var title in voteCount){
//   sortedArray = [];
//   for (var candidate in voteCount[title]){
//     sortedArray.push([candidate, voteCount[title][candidate]]);
//     sortedArray.sort(function(a, b) {return b[1] - a[1]});
//   }
//   console.log(sortedArray)
//   officers[title] = sortedArray[0][0]
// }



// __________________________________________
// Refactored Solution

for (var key in votes) {
  for (var office in votes[key]) {
    var choice = votes[key][office]
    if (voteCount[office][choice] === undefined) {
    voteCount[office][choice] = 1;
    }
    else {
    voteCount[office][choice] += 1;
    }
  }
}

for (var title in voteCount){
  sortedArray = [];
  for (var candidate in voteCount[title]){
    sortedArray.push([candidate, voteCount[title][candidate]]);
    sortedArray.sort(function(a, b) {return b[1] - a[1]});
  }
  officers[title] = sortedArray[0][0]
}



// __________________________________________
// Reflection


// Whew... That took me some time.  I just have not had enough practice with JS yet, and the syntax still confuses me.
// I will have to come back to the refactor on this one once I am sure I have time to complete everything else.  The sort
// issue here really had me frustrated.  I had forgotten that I was sorting a nested array and had to call the sort on the
// actual vote total that I had set in the array.. arggggg.  I was getting the hang of the syntex when I got down to setting
// up the arrays to be sorted, so I should be able to refactor the top to be more dry.

// UPDATE:  Was able to refactor, much better.



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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)