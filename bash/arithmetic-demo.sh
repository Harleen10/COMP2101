#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
read -p "Input1? " firstnumber
read -p "Input2? " secondnumber
sum=$((firstnumber + secondnumber))
sub=$((firstnumber - secondnumber))
dividend=$((firstnumber / secondnumber))
multiply=$((firstnumber * secondnumber))
remainder=$((firstnumber % secondnumber))
power=$((firstnumber**secondnumber))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnumber/$secondnumber}")

cat <<EOF
$firstnumber plus $secondnumber is $sum
$firstnumber divided by $secondnumber gives $dividend with reminder of $remainder
  - More precisely, dividend is $fpdividend
$firstnumber multiply by $secondnumber is $multiply
$firstnumber subtracting by $secondnumber is $sub
Displaying the $firstnumber raised to the power of the $secondnumber is $power
EOF
