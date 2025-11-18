// { STEP 1: STRING DECLARATION }

/*
Here I will address the topic of strings so that we can gain knowledge and master them when this subject comes up.
We have 5 types of string declarations, each with its own peculiarities and differences.

Example of each:
*/

void declarations() {
  // normal way
  var str = 'Hello World';
  print(str); // Here we just used a normal mode string

  // raw string
  var rs = r'Hello\nWorld';
  print(rs); // Here we have a raw string that's ignore every interpolation and show evething on a string -> Output: Hello\nWorld

  // interpolation
  var name = 'Ana';
  var age = 20;
  var msg = 'Name: $name, Age: ${age + 1}';
  print(msg); // Here we have a interpolation string that's show every variable value as a string part

  // summation
  var full1 = 'Hello ' + 'World';
  print(full1); // Here we use 2 string in the same variable with summation symbol (+)

  // summation without the plus sign "+"
  var full2 = 'Hello ' 'World';
  print(full2); // Here we use 2 string in the same variable without summation symbol (+)
}

// { STEP 2: METHODS }

/*
Like any other language, Dart has its methods to make the language easier to use. Here I will present the most common methods used with strings, explain them, and give examples to facilitate understanding.

Example of each:
*/

void methods() {
  // .length
  var name = 'Gustavo';
  print(name.length); // The first method is called ".length", and it serves to return the size of where we are going to use it.

  // .isEmpty / .isNotEmpty
  var emptyString = '';
  emptyString.isEmpty; // output -> true
  var notEmptyString = 'String Here';
  notEmptyString.isNotEmpty; // output -> true
  // As expected, this method checks if the string is empty or not and returns a true or false response.

  // .toUpperCase() / .toLowerCase()
  var upp = 'string to upper case';
  upp.toUpperCase(); // output -> 'STRING TO UPPER CASE'
  var low = 'STRING TO LOWER CASE';
  low.toLowerCase(); // output -> 'string to lower case'
  // As the name suggests, it serves to convert all characters in the string to uppercase or lowercase.

  // .contains('string')
  var bigString = 'Here we have an important word';
  bigString.contains('word'); // output -> true
  // This method is used to check if a string contains specific text or something else we need, for example, when I want to know if the word "Java" is inside "Javascript".

  // .startsWith('string') / .endsWith('string')
  var jsString = 'javascript';
  jsString.startsWith('java'); // output -> true
  var pyString = 'python';
  pyString.endsWith('hon'); // output -> true
  // To get straight to the point, these methods are used to see if the string "starts with" or "ends with" any comparison string, always keeping in mind that Dart is a case-sensitive language and each case is different, which is quite important. As long as the characters are the same as those in the string being compared, we will have no problems, and the size of the comparison string will not matter.

  // .indexOf('character') / .lastIndexOf('character')
  var car = 'civic';
  car.indexOf('v'); // output -> 2
  car..lastIndexOf('c'); // output -> 4
  // To understand this method, simply note that it is self-explanatory and will always refer to the index of the mentioned item or to the last index if there is more than one for the mentioned item.

  // .trim() / .trimLeft() / .trimRight()
  var spacedString = ' hi ';
  spacedString.trim(); // output -> 'hi'
  spacedString.trimLeft(); // output -> 'hi '
  spacedString.trimRight(); // output -> ' hi'
  // The `trim` command removes all whitespace from a string, just like `trimLeft` and `trimRight`, which remove spaces only from the beginning (left) or end (right) of the string.
  /*
  Spaces example:
  
  ' ' (space)
  '\n' (new line)
  '\t' (tab)
  '\r' (carriage return)
  '\f' (form feed)
  */

  // .replaceFirst('old string', 'new string') / .replaceAll('old string', 'new string')
  var tripleString = 'faa faa bar lee';
  tripleString.replaceFirst('faa', 'foo'); // output -> 'foo faa bar lee'
  tripleString.replaceAll('faa', 'foo'); // output -> 'foo foo bar lee'
  // The "replaceFirst" option replaces one string with another (if there are other identical strings, it will only replace the first one), while "replaceAll" replaces all strings with the new one.

  // .split('argument')
  var fruits = 'maçã,banana,uva';
  fruits.split(','); // output -> ['maçã', 'banana', 'uva']
  // The "Split" function removes an argument from a string and separates it, returning a list of strings containing what remains of the initial string.
}