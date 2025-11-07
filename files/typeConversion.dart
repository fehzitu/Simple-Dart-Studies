/*
{ TYPE CONVERSION }
In Dart, converting one data type to another is quite simple and similar to each other.
*/

// String -> int
var val = int.parse('1');
assert(val == 1); // Debug mode verification
// String -> double
var val2 = double.parse('1.1');
assert(val2 == 1.1);

/*
In this example in the first group, I converted from String to int using the "int.parse( )" method passing the string to be converted as a parameter and then I converted the String to double using "double.parse( )" too.

Note that we have an "assert()" passed as a check on each of them, verifying if the conversion will convert to the specific and exact values. This check is only done in debug mode and will return an error if it is false.
Obs: This verification is accurate.

In the same way that we performed these conversions, we can do them in reverse.
Here are some examples:
*/

// int -> string
String valToString = val.toString();
// double -> string
String val2ToString = val2.toStringAsFixed(2);

/*
Using the ".toString( )" method, we convert the passed values to the string type, and if it happens to be a double number that breaks down, like 123.456, and we want to display only 123.45, we use ".toStringAsFixed(2)" to recognize only 2 values after the decimal point.
*/