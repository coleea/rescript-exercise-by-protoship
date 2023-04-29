/*
  -----------------------------------------------------------------------------
  Exercise 4 (easy)
  -----------------------------------------------------------------------------
  Attempt mixing up the operators and the value types in the above bindings.
  For example, change an integer value to a float like this `1` -> `1.`. Try
  every combination you can.

  See if you can slip one past the ReScript type checker!

  Move on when you have convinced yourself that the ReScript compiler has got
  your back :)
  -----------------------------------------------------------------------------

  **Note regarding exercise 4**

  The ReScript compiler error messages will include hints on the `Belt`
  library functions like:
  
  - Belt.Float.toInt,
  - Belt.Int.toFloat,
  - Belt.Float.toString,
  - Belt.Int.toString to name a few...

  You can use these functions to explicitly convert a value from one type
  to another. But before you can use them in code, we need to learn a few
  other concepts. This will be covered later in the tutorial, and you will
  revisit these functions.
 */

/*
  Uncomment the block below.
 */

let bookName = "Deep Work"
let tagline = "Rules for Focused Success in a Distracted World"

let book2 = {
  let bookName = "Real World OCaml"
  let tagline = "Functional programming for the masses"
  bookName ++ ": " ++ tagline
}

let book = bookName ++ ": " ++ tagline


/*
  A new block scope can be created by putting code within curly braces `{}`.

  The two bindings within `book2` shadow the bindings with the same name
  outside the block scope.

  What is the value of `book2`?

  The last expression within the block scope is evaluated and implicitly 
  returned. 
  
  In ReScript there is no explicit `return` keyword. It is always
  the final expression.
 */
