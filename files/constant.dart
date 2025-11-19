// { STEP 1: INTRODUCTION }

/*
In Dart, we have two types of constants that we need to know the difference between, where to use them, and when to use them; in this case, I'm referring to "const" and "final". In Dart, we have what we call "compile time" and "runtime." During compile time, values are assigned before the file itself is executed, while during runtime, as the name suggests, values are assigned during the file's execution. The "const" and "final" differ in this aspect and in many other details, which we will discuss now.

In general, constants are variables whose values do not change after being assigned (usually not), but there are exceptions.
*/

// { STEP 2: CONST & FINAL}

/*
Initially, `const` and `final` seem to be the same thing or function in the same way, but here I will detail their differences and show how important it is to know the differences between them to avoid problems and headaches.

Differences between const and final:
*/

void differences() {
  Object csnt = {
    "immutable": true,
    "known value in compilation": true,
    "created at runtime": false,
    "receives dynamic values": false,
    "const expressions": true
  };
  print('Const:\n$csnt');

  Object fnl = {
    "immutable": true,
    "known value in compilation": false,
    "created at runtime": true,
    "receives dynamic values": true,
    "const expressions": false
  };
  print('Final:\n$fnl');

  final now = DateTime.now(); // Ok
  const now2 = DateTime.now(); // Error
  // In the "const" statement, we have an error for a simple reason: it attempts to retrieve data in real time and returns an error because "const" is always assigned before the general execution of the code. In contrast, this attempt to retrieve that information occurs at runtime (when the code is executed).
}

// { STEP 3: WHEN & WHERE I CAN USE CONST}

/*
Use const when:
✔️ The value never changes
✔️ The value is known at compile time
✔️ You want performance optimizations
✔️ You want canonicalization (avoid duplicated instances in memory)
✔️ You need objects to be immutable and fully predictable

Use final when:
✔️ You need values that may change
✔️ The value depends on runtime computations
✔️ The value comes from APIs, databases, or user input
*/