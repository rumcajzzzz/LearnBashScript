#!/bin/bash
# Program to tell a persons fortune
echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

function GET_FORTUNE() {
  echo -e "Ask a yes or no question:\n"
  read QUESTION
}

GET_FORTUNE
echo $QUESTION