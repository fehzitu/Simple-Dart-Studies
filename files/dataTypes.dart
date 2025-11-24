// { INTRODUCTION }

/*
Dart is a statically typed language with type inference. This means:
- You can declare types explicitly.
- Or Dart can infer the type automatically.
*/

// { 1: Main Categories of Data Types }

/*
   Dart includes four main categories:

   1. Primitive types
   2. Composite types (collections)
   3. Special types
   4. User-defined types
*/

// { STEP 2: Primitive Types }
   
// int — integer values
int age = 25;

// double — floating-point numbers
double height = 1.75;

// num — supertype of int and double
num value = 10;
value = 10.5;

// String — immutable text
String name = 'Dart';

String multiline = '''
line 1
line 2
''';

// bool — true or false
bool active = true;

// Runes — Unicode code points
var emojiRunes = '😎'.runes;

// Symbol — rarely used metadata symbol
Symbol s = #mySymbol;

// { STEP 3: Composite Types (Collections) }
// List — ordered collection
List<int> numbers = [1, 2, 3];
var newList = [...numbers, 4];

// Set — unordered, no duplicates
Set<String> fruits = {'apple', 'banana', 'grape'};

// Map — key/value pairs
Map<String, int> stock = {
  'apple': 10,
  'banana': 20,
};

// { STEP 4: Special Types }
// dynamic — disables compile-time type checking
dynamic x = 10;
x = 'hello';
x = true;

// Object and Object? — supertypes
Object anything = 10;
anything = "text";

/* Null safety
   - Non-nullable by default
   - Add ? to allow null
*/
int? nullableAge = null;
// int nonNullable = null; // ERROR

String? maybeName;
var display = maybeName ?? 'No name';   // null-coalescing
maybeName ??= 'Default';                // assign if null

// void — no return value
void test() {}

// Never — functions that never return
Never error() => throw Exception('Error!');

// Function type
Function f = () => print('hello');
int sum(int a, int b) => a + b;

// { STEP 5: Type Inference (var, final, const) }

// var — inferred once
var inferred = 10;

// final — single assignment
final fixedName = 'John';

// const — compile-time constant
const PI = 3.14;

// { STEP 6: Null Safety Model (Sound Null Safety) }

/*
   Key rules:
   - Non-nullable by default
   - Use ? for nullable types
   - Operators: ?, !, ??, ??=
*/

String? username;
var result = username ?? 'Unknown';
username = 'Alice';
var forced = username!; // assert non-null

// { 7: var vs dynamic vs Object? }

   var      -> inferred once, static type checking, cannot change type
   dynamic  -> no static checking, can change type freely
   Object   -> supertype of all non-null objects, static checking
   Object?  -> supertype of all values including null
*/

// { 8: typedef (Type Aliases) }

typedef Sum = int Function(int, int);
Sum add = (a, b) => a + b;

// { STEP 9: User-Defined Types }

// Class
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

// Enum
enum Status {
  active,
  inactive,
  pending
}

// { STEP 10: GENERICS }

// Generic collections
List<String> names = [];
Map<int, double> prices = {};

// Custom generic class
class Box<T> {
  T value;
  Box(this.value);
}