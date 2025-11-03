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
