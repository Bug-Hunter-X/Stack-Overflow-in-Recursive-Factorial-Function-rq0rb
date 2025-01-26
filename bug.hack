function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will result in a stack overflow error for large values of x because it recursively calls itself without a base case that will eventually lead to a non-recursive call.  The base case, `if (x == 0)`, is correct, but for very large input values of x, the recursion depth exceeds the system's limits. 