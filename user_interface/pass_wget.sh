#!/bin/sh

username=guest
hostname=localhost

printf "Password: "
stty -echo
read password
stty echo

printf "\n"

wget -q --password="$password" "ftp://${username}@{hostname}/filename.txt"
