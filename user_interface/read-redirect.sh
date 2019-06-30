#!bin/sh

tty=`tty`
while read question
do
  printf "$question "
  read dir < $tty
  printf "Command: ls $dir\n"
  ls $dir
done < question.txt
