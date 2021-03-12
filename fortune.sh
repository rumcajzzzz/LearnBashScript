#!/bin/bash
# Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

function GET_FORTUNE() {
  if [[ ! $1 ]]
  then
    echo -e "Ask a yes or no question:\n"
  else
    echo "Try again. Make sure it ends with a question mark: "
  fi
  read QUESTION
  echo -e "\n${RESPONSES[$N]}\n"
  
}
GET_FORTUNE
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done