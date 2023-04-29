/*
  Uncomment the block below.
 */

let downvotes = 10
let upvotes = 5
let cssClassName = if upvotes < downvotes {
  "Comment Comment-hidden"
} else {
  "Comment"
}

/*
  The (if/else-if/.../else) syntax is a "control flow" construct familiar
  to you. Here it is an **expression**. 

  Depending on the branch which evaluates true, a value is returned and
  it has an associated type inferred by the compiler, or you may have
  manually annotated the type yourself. The types of the values returned
  from any branch should always match.

  This is consistent with what you learned earlier when declaring immutable
  bindings. A binding cannot be both `int` and `string` at the same time.
  So therefore the if/else expression can only return a value belonging
  to a single type.

  You will see a compiler error if you try returning a `string` value
  in one branch and a `float` value in another branch. The type checker
  will catch this and inform you that the types do not match. 
 */

/*
  -----------------------------------------------------------------------------
  Exercise 1
  -----------------------------------------------------------------------------
  Follow these rules to calculate the applicable discount on the shopping cart
  total:

  1. When the total is 500 or above:
  
    * Apply a flat discount of 10%.

    ```
    // Example 1: amount = 500
    discount = 500 * 0.1

    // Example 2: amount = 520
    discount = 520 * 0.1
    ```

  2. When the total is 200 or above, but below 500:

    * Apply a 5% discount on the amount greater than 200. 
    * Add 25 to the above intermediate result to get the final discount.

    ```
    // Example 1: amount = 200
    discount = (200 - 200) * 0.05 + 25

    // Example 2: amount = 220
    discount = (220 - 200) * 0.05 + 25
    ```
  -----------------------------------------------------------------------------
 */

/*
  Uncomment the block below for completing exercise 1.
 */
/*
let cartTotal = 220
let discount = 0
SimpleTest.assertEqual(
  ~expected=26,
  ~actual=discount,
  ~msg="[exercise 1] Calculate discount for total amount of shopping cart",
)
*/

/*
  The code above is not reusable. You need functions for creating reusable
  units of computation. By rewriting the above as a function you can now
  compute the discount for any value of total. Here is an example:

    ```
    let fullname = (firstName, lastName) => 
      firstName ++ " " ++ lastName
    ```

  Just like regular value bindings, you can also manually annotate
  the types of each input argument and the output value.

    ```
    //                                     output type
    //                                       ||||||
    //                                       vvvvvv  
    let fullname = (fn: string, ln: string): string =>
      fn ++ " " ++ ln
    ```

  Manual annotation is often unnecessary. The compiler is capable of
  automatically inferring the correct type from your implementation. 
  But when there comes a time when you need to manually annotate the 
  type, you use the above syntax.

  If you need to lookup the documentation of a library function you
  will see **type signatures** being used everywhere. The type signature
  for the `fullname` function looks like:

    ```
    let fullname: (string, string) => string
    ```

  From this you can infer that the function `fullname` accepts two
  input arguments. Both of them are of the `string` type. It returns
  a value of the `string` type. You can pretty much infer the behavior
  of `fullname` without seeing the actual implementation.

  Types are therefore a useful form of documentation. It will not go
  stale unlike other pieces of documentation. How can it? It is taken
  directly from the implementation. If the implementation types change,
  the type signature will also change.

  How do you call or apply this function?

    ```
    let turing = fullname("Alan", "Turing") // "Alan Turing"

    // Not assigned to any binding
    fullname("Barbara", "Liskov") // "Barbara Liskov"
    ```

  The implementation of `fullname` is simple. There is just a single
  expression to evaluate. If you need multiple expressions in your
  function body, you can create a new block scope with curly braces.
  Like this:

    ```
    let nameToInitials = (firstName, lastName) => {
      let firstNameInitials = Js.String.get(firstName, 0)
      let lastNameInitials = Js.String.get(lastName, 0)

      firstNameInitials ++ ". " ++ lastNameInitials ++ ". "
    }
    ```
  
  There is no explicit `return` keyword. The value from evaluating
  the final expression is returned to the caller.

    ```
    let curry = nameToInitials("Haskell", "Curry") // "H. C."

    // Not assigned to any binding
    nameToInitials("Alonzo", "Church") // "A. C."
    ```
 */