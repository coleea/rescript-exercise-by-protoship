/*
  Content order (tentative):
  
  1. Declare a variable (let-binding)
*/

/*
  This is how you declare a variable.
 */

let greeting: string = "Hello, World!"

/*
  In many mainstream programming languages you can modify the value
  in the `greeting` variable. It would look like this:
  
    ```
    greeting = "Goodbye!"
    ```
  
  The `greeting` variable is __mutable__. So you can reassign the
  contents of this variable any number of times in the code that
  you author.

  This is not valid syntax in ReScript. The `greeting` variable
  is __immutable__. It's value cannot be changed.

  In ReScript this syntax is known as let-binding. The line above 
  binds the value "Hello, World!" to the name `greeting`. The
  type of `greeting` is also manually annotated as belonging to the 
  `string` (primitive) type.

  The ReScript compiler will type-check the value to ensure that it
  is indeed the same as the annotated type. When the type of the
  binding does not match the type of the value, the code will not
  compile.

  Ex.1
  Change the annotated type of `greeting` from string to char. This
  will result in a compilation error. Read the error message generated
  by the ReScript compiler. Fix the problem by changing back the
  annotated type to match the value.

  The ReScript compiler produces clear and helpful error messages. It
  sometimes also recommends a fix for the problem. Under the hood there
  is a powerful compiler which eliminates an entire category of bugs
  or defects from every making it into production code. The ReScript 
  compiler is your guide in writing high quality code. You will often
  hear ReScript developers exclaim that if it compiles then it works
  correctly!

  > __Tip__: Develop a habit of reading the compiler error messages
  to identify & fix the problem in your code. The more you do it, the 
  easier this becomes and the better you get at it.
 */

/*

let firewood: string = `শিমুল কাঠই হোক বা বকুল কাঠই হোক, আগুনের চেহারাটা একই`
Js.log(firewood)

https://wiki.c2.com/?TenWordLine

1. Building blocks
  - Primitives: int, float, char, string, bool
  - type inference
  - Bindings
    - are immutable by default
    - shadowing
    - mutation 
    (leave a reference to this language feature as you progress through the tutorial)
    - block scope
2. Defining a new type (Shape of data)
  - Constructor only
  - Constructor with tagged data
  - Constructor with type variable
  - Recursive / self-referential types
3. Pattern matching
  - exhaustive pattern matching
  - functions which consume types
  - functions which produce types
4. Functions
  - currying, partial application
  - uncurried functions
  - recursive functions
    - auxillary function
  - uncurried function
  - anonymous
5. Labeled Arguments in Functions
  - labelling arugments when similar type values passed as arguments
  - optional labeled arguments
  - punning

  Key ideas:
  - runtime check vs compile time guarantees
*/

/*

https://www.hillelwayne.com/post/learning-a-language/?utm_source=hillelwayne&utm_medium=email

Progressive cheat sheets
https://www.hillelwayne.com/post/cheatsheets/?utm_source=hillelwayne&utm_medium=email

Building blocks
- integer
- bool
  - Are there more integers than bools?
- what is a type?
  - name for a collection of values
- define a new type
  type seasoning = Salt | Pepper
  - What is the type of Salt?
  - What is the type of Pepper?
- define a new type with constructor arguments
  type num = Zero | OneMoreThan(num)
  - Is Zero a num?
  - Is OneMoreThan(Zero) a num?
  - What is the type of OneMoreThan(OneMoreThan(Zero))?
  - How many vlues of num are possible?
- define a new type with type variable
  type openFacedSandwich('a) =
    | Bread('a)
    | Slice(openFacedSandwich('a))
    - What is Bread(0)?
    - What is Bread(true)?
    - How are they both the same types? They are not
    - A shape that represents many different types
    - Does that mean we can derive as many as types as 
      we want from the shape?
    - openFacedSandwich(int)
    - openFacedSandwich(bool)
    - openFacedSandwich(num)
      Bread((OneMoreThan(Zero)))      -> openFacedSandwich(num)
      Bread(Bread(OneMoreThan(Zero))) -> openFacedSandwich(openFacedSandwich(num))

  Moral
  -----
  1. Use type to describe types.
  2. When a type contains a lot of values, the type definition refers to itself.
  3. Use type variables with type to define shapes


  Pattern-matching
  Moral
  -----
  * The number and order of patterns in the defintion of a function should match
  that of the definition of the consumed data type
  * Functions that produces values of a data type must use the associated
  constructors to build data of that type

  Record
  Tuples

  Functions are people too
    let identity = x => x
    identity: 'a => 'a

    let trueMaker = x => true
    trueMaker: 'a => bool

  Moral
  -----
  Some functions consume values of arrow type; some produces
  values of arrow type
  Replace stars by arrows to reduce the number of values
  consumed and to increase the generality of the function defined.
  Some functions produce exceptions instead of values; some
  don't produce anything. Handle raised exceptions carefully.
  
  Modules, Functors
  Moral
  -----
  Real programs consist of many components. Specify the dependencies
  among these components using signatures and functors
 */
