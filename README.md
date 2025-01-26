# Hack Recursion Bug

This repository demonstrates a common error in recursive functions written in Hack: stack overflow due to unbounded recursion. The `foo` function calculates the factorial of a number.  However, without proper handling of large inputs, it will exceed the maximum recursion depth allowed by the system.

## Bug Description
The `foo` function recursively calls itself to calculate the factorial.  For large values of the input parameter `x`, the recursion depth becomes excessive, leading to a stack overflow error. This occurs because each recursive call adds a new stack frame, and eventually the stack runs out of space.

## Solution
The solution involves using an iterative approach rather than a recursive approach, or at the very least adding a check to prevent the function from continuing recursion past a certain depth.

## How to Reproduce
1. Clone this repository.
2. Compile the `bug.hack` file.
3. Run the compiled code.
4. Observe the stack overflow error for sufficiently large inputs (e.g., `foo(1000)`).

## License
[MIT License](https://opensource.org/licenses/MIT)