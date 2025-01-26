function foo(x: int): int {
  if (x == 0) {
    return 1;
  }
  var result: int = 1;
  for (var i = 1; i <= x; i++) {
    result = result * i;
  }
  return result;
}

function main(): void {
  echo foo(5);
}
This iterative version avoids the stack overflow error by not using recursive calls.