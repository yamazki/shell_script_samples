#!/bin/sh

while :
do
  printf "Menu:\n"
  printf "1) list file\n"
  printf "2) current directory\n"
  printf "3) exit\n"
  
  read number
  case $number in
    1)
      ls
      ;;
    2)
      pwd
      ;;
    3)
      exit
      ;;
    *)
      printf "Error: Unknown Command\n"
      ;;
  esac
  
done
