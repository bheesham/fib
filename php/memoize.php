<?php

class Memoize {
  var $func;
  var $history = array();

  function __construct($func) {
    $this->func = $func;
  }

  function exec() {
    $args = func_get_args();
    $id = serialize($args);
    
    if (!array_key_exists($id, $this->history)) {
      $this->history[$id] = call_user_func_array($this->func, $args);
    }

    return $this->history[$id];
  }
}

$fib = new Memoize($a = function($n) use (&$a) {
  if ($n < 2) { return $n; }
  return $a($n - 1) + $a($n - 2);
});

$fib->exec($argv[1]);
