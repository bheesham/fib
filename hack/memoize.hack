<?hh

class Memoize {
  private callable $func;
  private $history = array();

  public function __construct(callable $func): void {
    $this->func = $func;
  }

  public function exec() {
    $args = func_get_args();
    $id = md5(serialize($args));
    
    if (!array_key_exists($id, $this->history)) {
      $this->history[$id] = call_user_func_array($this->func, $args);
    }

    return $this->history[$id];
  }
}

$fib = new Memoize($a = function(int $n): int use (&$a) {
  if ($n < 2) { return $n; }
  return $a($n - 1) + $a($n - 2);
});

$fib->exec(intval($argv[1]));
