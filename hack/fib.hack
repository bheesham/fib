<?hh

function fib(int $n = 10) : int {
  if ($n < 2) { return $n; }
  return fib($n - 1) + fib($n - 2);
}

fib(intval($argv[1]));
