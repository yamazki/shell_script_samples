#!/bin/sh

DIR=/var/tmp

ls_home()
{
  local DIR
  
  DIR=~/$1
  printf "directory: $DIR \n"
  ls $DIR
}

ls_home logdir

printf "directory: $DIR \n"
ls $DIR
