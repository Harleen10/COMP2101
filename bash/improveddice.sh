#!/bin/bash
# this script rolls a pair of six-sided dice and displays both the rolls and the sum
# Improve this script by re-organizing it to:
#  put the number of sides in a variable which is used as the range for the random number
sides=6
#  put the bias, or offset, for the RANDOM number in a variable (it is 1 for our purposes)
bias=1
#     - you can think of this as the minimum value for the generated number
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
rollingdie1=$(( RANDOM % sides + bias))
rollingdie2=$(( RANDOM % sides + bias))
#  generate the sum of the dice
sum=$(( rollingdie1 + rollingdie2 ))
#  generate the average of the dice
average=$((sum / 2 ))
#  display a summary of what was rolled, and what the result was
# Tell the user we have started processing
echo "Rolling the dies to get their sum and average"
echo "Rolled $rollingdie1, $rollingdie2 for a $sum"
echo "Rolled $rollingdie1, $rollingdie2 and an average is $average"
