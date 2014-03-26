echo -e 'HHVM-Hack'
echo -e '\t--------------\n'

echo -e '\thack/fib.hack:'
time hhvm hack/fib.hack 40
echo -e '\t--------------\n'

echo -e '\thack/array.hack:'
time hhvm hack/array.hack 1999999
echo -e '\t--------------\n'

echo -e '\thack/memoize.hack:'
time hhvm hack/memoize.hack 40