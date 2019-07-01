#!/bin/sh

test "$1" -eq 0 2>/dev/null

if [ $? -lt 2 ]; then
  printf "Argument is Integer . \n"
  expr 10 + $1
else
  printf "Argument is not Integer . \n"
  exit 1
fi
