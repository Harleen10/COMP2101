#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command
done="It's correct."
try="Incorrect, try again.."
referenceString="welcome"
read -s -p "Enter Pass:" myString
echo
if [ $myString = $referenceString ]; then
  echo "$done"
  echo
  else
    echo "$try"
    read -s -p "Enter Pass:" myString
    if [ $myString = $referenceString ]; then
      echo "$done"
      echo
      else
        echo
        echo "$try"
        read -s -p "Enter Pass:" myString
      if [ $myString = $referenceString ]; then
        echo "$done"
        echo
      else
        echo
        echo "$try"
    fi
  fi
fi
