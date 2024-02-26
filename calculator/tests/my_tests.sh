#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

if [[ $($CALCULATOR 1 + 1) -ne 2 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 + 1) failed to produce 2 as an output!'
  exit 1
fi

if $CALCULATOR 3 @ 2; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (3 @ 2) apparently succeeded?!'
  exit 1
fi

# Test 04: Ensure simple case has correct output...
if [[ $($CALCULATOR 2 / 4) -ne 0 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (2 / 4) failed to produce 0 as an output!'
  exit 1
fi

if [[ $($CALCULATOR 2 - 4) -ne -2 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (2 - 4) failed to produce -2 as an output!'
  exit 1
fi

if [[ $($CALCULATOR 2 * 4) -ne -2 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (2 * 4) failed to produce 8 as an output!'
  exit 1
fi
