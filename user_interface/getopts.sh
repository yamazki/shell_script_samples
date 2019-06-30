#! /bin/bash
option_a_exist=0
separator=""

while getopts "ap:" option
do
    case $option in
      a)
        option_a_exist=1
        ;;
      p)
        separator="$OPTARG"
        ;;
      \?)
        echo "Usage: getopts.sh [-a] [-p separator] target_dir" 1>&2
        exit 1
        ;;
    esac
done

shift $(expr $OPTIND - 1)
path="$1"

if [ $option_a_exist -eq 1 ]; then
  ls -a -- "$path"
else
  ls -- "$path"
fi

if [ -n "$separator" ]; then
  echo "$separator"
fi
