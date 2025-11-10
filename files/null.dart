/*
Unlike most common languages, in Dart, if a variable is not referenced, it will become a null object.

Example:
*/

void main() {
  var num;
  print(num);
} // -> null

/*
To have control over this, we have "Null Aware Operators" (?.) (??) (??=)

The following are the most common ways to use them in Dart

Example:
*/