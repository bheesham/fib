echo -e 'HHVM'
echo -e '\t--------------\n'

echo -e '\tphp/fib.php (php):'
time hhvm php/fib.php 40
echo -e '\t--------------\n'

echo -e '\tphp/array.php (php):'
time hhvm php/array.php 1999999
