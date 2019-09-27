#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
read -p "Input1? " firstnumber
read -p "Input2? " secondnumber
# Improve this script by demonstrating using subtraction and multiplication
sub=$((firstnumber - secondnumber))
multiply=$((firstnumber * secondnumber))
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
remainder=$((firstnumber % secondnumber))

# Improve this script by calculating and displaying the first number raised to the power of the second number
power=$((firstnumber**secondnumber))


sum=$((firstnumber + secondnumber))
dividend=$((firstnumber / secondnumber))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnumber/$secondnumber}")

cat <<EOF
$firstnumber plus $secondnumber is $sum
$firstnumber divided by $secondnumber gives $dividend with reminder of $remainder
  - More precisely, dividend is $fpdividend
$firstnumber multiply by $secondnumber is $multiply
$firstnumber subtracting by $secondnumber is $sub
Displaying the $firstnumber raised to the power of the $secondnumber is $power
EOF
