
let two = 2
let one = 1
let three = 3

let sum = one + two
let sum2 = sum + three

/*
  -----------------------------------------------------------------------------
  Exercise 6 (easy)
  -----------------------------------------------------------------------------
  Uncomment the bindings `sum` & `sum2`. 
  
  You'll spot the following compiler error: 
  
    **The value sum can't be found**

  Reorder the bindings to fix the compilation error.
  -----------------------------------------------------------------------------

  You may have guessed the nature of the problem in the code above.

  A let-binding cannot be used in an expression before it has been declared.

  So the order of bindings matters within a ReScript source file. It follows
  a top-bottom order.

  This makes it increasingly predictable when reading ReScript programs. You
  can always expect the binding to have been declared somewhere above before
  it is used in an expression.
 */
