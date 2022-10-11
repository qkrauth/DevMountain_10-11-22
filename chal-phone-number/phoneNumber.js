// Create a Phone Number

// Difficulty:
// Medium

// Concepts:
// General, Loops

// Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

// Example:

// createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"
// The returned format must be correct in order to complete this challenge.

// Don’t forget the space after the closing parentheses!

////////// CODE HERE //////////

function createPhoneNumber(numbersArray) {
    let format = "(xxx) xxx-xxxx";
    
    for (let i = 0; i < numbersArray.length; i++) {
        format = format.replace('x', numbersArray[i]);
    }
    
    return format;
  }
console.log(createPhoneNumber([1,2,3,4,5,6,7,8,9,0]));