// { STEP 1: What is null in Dart }

/*
• `null` represents the absence of a value.
• With Dart’s null safety, a variable CANNOT be null unless explicitly allowed.
• This improves safety and eliminates most runtime null reference errors.

Example:
    int a = 10;     // OK
    int b = null;   // ERROR: non-nullable type doesn't allow null
*/

// { STEP 2: Nullable variables (using ?) }

//• Add `?` to a type to allow null values.
int? age;   // Can be null
String? name;
double? price;
List<int>? numbers;

// { STEP 3: Null-Aware Access Operator (?.) }

/*
• Checks for null before accessing properties or methods.
• Prevents runtime errors.
*/
void example1() {
  String? text = null;
  print(text?.length); // Prints null instead of throwing an error
}

// {STEP 4: Null-Coalescing Operator (??) }

// Provides a fallback value when the expression is null.
void example2() {
  String? username = null;
  print(username ?? "Guest"); // "Guest"
}

// { STEP 5: Null-Coalescing Assignment Operator (??=) }

// • Assigns a value ONLY if the variable is null.
void example3() {
  int? x;
  x ??= 5; // x becomes 5
  x ??= 10; // ignored, since x is no longer null
}

// { STEP 6: Non-Null Assertion Operator (!) }

/*
• Tells the compiler: “I guarantee this is not null.”
• If you're wrong, your program crashes.
• Use sparingly and only with 100% certainty.
*/
void example4() {
  String? data = "Hello";
  print(data!.length); // Works
}

// { STEP 7: Null-Aware Spread Operator (...?)}

/*
• Used in list literals.
• Allows spreading a list only if it is not null.
*/
void example5() {
  List<int>? nums = null;
  var list = [1, 2, ...?nums];
  print(list); // [1, 2]
}

// STEP 8: Null-Aware Cascade Operator (?..) }

/*
• Executes cascade operations only if the object is not null.
*/
class User {
  String name = "";
  int age = 0;

  void setName(String value) => name = value;
  void setAge(int value) => age = value;
}

void example6() {
  User? user;
  user
    ?..setName("Leo")
    ..setAge(20);
}

// { STEP 9: Handling null in constructors }

/*
• Common way to ensure non-null fields using ?? (default value)
*/
class Person {
  final String name;
  Person(String? n) : name = n ?? "Unknown";
}

// { STEP 10: Null Safety with Functions }

/*
• Functions may return nullable types.
• Parameters can be nullable or non-nullable.
*/
String? findName() {
  return null;
}

void showAge(int? age) {
  print(age ?? 0);
}

void printText(String text) {
  // text can never be null
}

// { STEP 11: Late Keyword (deferred initialization) }

/*
• Promises the compiler that you will assign the value before use.
• If you fail to do so, it throws an error at runtime.
*/
late String title;

void example7() {
  title = "Welcome";
  print(title);
}

// { STEP 12: required Keyword and Null Safety }

/*
• Used in named parameters.
• Ensures the value must be provided and cannot be null.
*/
void createUser({required String name}) {}

// { STEP 13: Null in Collections }

/*
Two different concepts:
1. A collection can be nullable.
2. Elements inside a collection can be nullable.
*/
List<String>? maybeNames = null;    // The list itself can be null
List<String?> names = ["Ana", null, "João"]; // Items can be null

// { STEP 14: Using null in switch statements }

// • Switch can match null if the variable is nullable.
void example8() {
  String? status;

  switch (status) {
    case null:
      print("Status is null");
      break;
    default:
      print("Status is not null");
  }
}

// { STEP 15: Advanced: Combined null-safe patterns }

// • Frequently used for safe property access and fallback values.
void example9() {
  String? input;
  print(input?.toUpperCase() ?? "EMPTY");
}

/*
--------------------------------------------------
SUMMARY TABLE — Memorize this
--------------------------------------------------
?     → Marks a type as nullable
?.    → Safe access operator
??    → Fallback value
??=   → Assign only if current is null
!     → Force non-null (dangerous)
...?  → Null-safe spread operator
?..   → Null-safe cascade
late  → Deferred initialization
required → Mandatory non-null parameter
--------------------------------------------------
*/