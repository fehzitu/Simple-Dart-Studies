/*
{ STEP 1: ARITHMETIC OPERATORS }

In Dart we have 7 arithmetic's operators, see an example of each:
*/

int addition = a + b; // + is addition operator
int subtraction = a - b; // - is subtraction operator
int multiplication = a * b; // * is multiplication operator
int division = a / b; // / is division operator
int rest = a % b; // % is rest of the division operator
int increment = a++; // % is increment operator
int decrement = a--; // % is decrement operator

/*
{ STEP 2: ASSIGNMENT OPERATORS }

Assignment operators, they are simple to understand and use. Follow the examples with their explanations.

Example of each:
*/

int val = 10; // int receives 10
int addEqual += 10; // same as addEqual = addEqual + 10
int subEqual -= 10; // same as subEqual = subEqual - 10

/*
{ STEP 3: LOGICAL OPERATORS }

Dart currently only has three logical operators, and it will be very important to know how and when to use them.

Example of each:
*/

void explain() {
  if(a && b) {
    print('If a and b');
  } // If a and b are truly values execute the if code block

  if(a || b) {
    print('If a or b');
  } // If a or b are truly value execute the if code block, here just one need to be true

  if(!c) {
    print('If not a');
  } // If c are a falsy value or "not c" execute the if code block
}