<?php

function fib($n = 10) {
  if ($n < 2) { return $n; }
  return fib($n - 1) + fib($n - 2);
}

