#!/bin/bash

yes_or_no() {
  echo "Is your name $* ?"
  while :
  do
    echo -n "Enter yes or no: "
    read x
    case "$x" in
      [yY] | [yY][eE][sS] ) return 0;;
      [nN][oO] ) return 1;;
      * ) echo "Answer yes or no";;
    esac
  done
}

echo "Original parameters are $*"

if yes_or_no "$1"
then
  echo "Hi $1, a good name"
else
  echo "Never mind"
fi

exit 0
