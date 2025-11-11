/*
In dart we have too many ways to use loops, here i will show you the most used ways

Examples:
The first is the most common and is used in the vast majority of languages
*/

void first() {
  // "For i initially 0, while i is less than or equal to 10, do"
  for(var i = 0; i <= 10; i++) {
    print(i);
  };
}

/*
The second way have a little difference from the other one, take a look
*/

void second() {
  var numbers = [1, 2, 3, 4, 5];
  
  // "For each n within numbers, do"
  for(var n in numbers) {
    print(n);
  };
}

/*
The second method is more similar to an array map, but it is still a loop
*/