// U3.W8-9: Challenge you're converting: Reverse Words from Week 8/9


// I worked on this challenge [by myself].

// 2. Pseudocode

// write a function that accepts a string argument and returns that same string, but reversed.


// 3. Initial Solution

function reverseWords(string) {
	var newstring = string.split(" ");
	var revstring = []
	for (i=0; i < newstring.length; i++) {
		revstring[i] = newstring[i].split("").reverse().join("");
	}
	return revstring.join(" ");
}


// 4. Refactored Solution



// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert ( 
	reverseWords("Ich bin ein Berliner") === "hcI nib nie renilreB",
	"The sentance should be reversed!",
	"1. " 
	)

assert ( 
	reverseWords("") === "", 
	"The sentance should be empty!", 
	"2. " 
	)
assert (
	reverseWords("word") === "drow",
	"the word should have been reversed!",
	"3. "
	)


// 5. Reflection 

// Ruby is SO much easier to work with than JS.  This took me almost twice the amount of time to do.  That being said, I
// probably would have solved this much faster if I had more JS practice, so I blame me.  I don't think I can refactor this
// one much further.