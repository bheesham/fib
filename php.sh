echo -e 'PHP'
echo -e '\t--------------\n'

echo -e '\tphp/fib.php (php):'
time php php/fib.php 40
echo -e '\t--------------\n'

echo -e '\tphp/array.php (php):'
time php php/array.php 1999999
echo -e '\t--------------\n'

echo -e '\tphp/memoize.php (php):'
time php php/memoize.php 40