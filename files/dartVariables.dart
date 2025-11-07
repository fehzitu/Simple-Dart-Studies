// { STEP 1: TYPES OF VARIABLES }

/*
In dart, we have 10 main types of declarable variables:

Example of each:
*/

int ten = 10; // Only integrer numbers
double value = 22.67; // Only decimal numbers
num anyoneAbove = 10; // Decimal & integrer
String name = 'Arthur'; // Only string
List users = ['Arthur', 'Felipe', 'Luana']; // Only array
Map object = {'nome': 'Ana', 'idade': 20}; // Only key-value
Set mySet = {1, 2, 3, 4, 5}; // Set without repetition
final singleAssignment = 10; // Only a single assignment
const myConstant = 'Hi'; // A common constante like js const
dynamic = 'Dart'; // It accepts any type of payment and its value can be changed.

/*
Example of each:
*/

var name = "Ana"; // Type assigned: String
int age = 18; // Explicit type: int
dynamic data = "Text"; // You can change the typing
final city = "Curitiba"; // You cannot change the typing
const pi = 3.1415; // Fixed constant

// { STEP 2: NOMENCLATURE AND NAMING STANDARDS }

/*
In Dart, we have naming conventions for variables:
  - camelCase = 'firstLowercaseSecondUppercase';
  - snake_case = 'all_lowercase_with_underscore_separating_words';
  - PascalCase = 'FirstUppercaseSecondUppercase';
  - kebab-case = 'all-lowercase-with-hyphen-separating-words'';

  Example:
*/

var camelCase = 'Im an camelCase variable';
var snake_case = 'Im an snake_case variable';
var PascalCase = 'Im an PascalCase variable';
var kebab_case = 'Im an kebab-case variable';

/*
{ STEP 3: DYNAMIC TYPING OF VARIABLES }

That being said, keep in mind that Dart is softly typed and not dynamic by nature, but it can be dynamic when needed.

Example:
*/

var x = 10; // int type only
x = "text"; // compilation error (It can't change type at runtime)

dynamic y = 10;
y = "text"; // It can change type at runtime
}

/*
That being said, keep in mind that Dart is static by default, even when using 'var', and its attributes do not change at runtime

On the other hand, the 'dynamic' type can be used, which makes it dynamic similar to Python, Javascript, or Ruby
*/

/*
{ STEP 4: HOISTING }
No, Unlike languages like Javascript, Dart doesn't use hoisting, as it's checked at compile time (before execution). Therefore, if something is used before being declared, it will return an error.

Example:
*/

void main() {
  print(a); // Error: 'a' was not declared
  int a = 10;
}

/*
The correct way to do it:

Example:
*/

void main() {
  int a = 10;
  print(a);
}

/*
{ STEP 5: FUNCTION HOISTING }

You need to declare the function before calling it, or at least ensure that the compiler knows about it (for example, if it's declared later but in the same file, the compiler already reads everything beforehand).

Example:
*/

void main() {
  hello(); // It works
}

void hello() {
  print("Hi, Dart!");
}

/*
It works normally here because the Dart compiler simply analyzes the entire file before compiling, so it already knows hello().
Because they are in the same file and the compiler has already read the entire file before executing it.

{ FINAL STEP: FINISH }
That said, the most commonly used variables are: var, int, double, String & dynamic, always keeping in mind that dynamic and var can both receive any type of value, but var makes that type fixed while dynamic can always alternate.
*/