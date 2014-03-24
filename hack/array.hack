<?hh

$array = array();
for ($i = 0; $i < $argv[1]); ++$i) {
  $array[$i] = $i;
}

fib($argv[1]);