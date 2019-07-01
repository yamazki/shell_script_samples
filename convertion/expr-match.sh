#!/bin/sh

quote="[\"']"
match="[^\"']*"

while read line
do
  href=$(expr "$line" : ".*href=${quote}\(${match}\)${quote}.*")
  if [ $? -eq 0 ]; then
    printf "$href \n"
  fi
done < index.html
