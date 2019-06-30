#!bin/sh

printf "Type Your Answear [y/n]: "
tty_state=$(stty -g)
stty raw

char=$(dd bs=1 count=1 2> /dev/null)
stty "$tty_state"

printf "\n"

case "$char" in
  [yY])
    printf "Input: YES\n"
    ;;
  [nN])
    printf "Input: NO\n"
    ;;
  *)
    printf "Input Whta?\n"
    ;;
esac
