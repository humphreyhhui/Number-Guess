#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USERNAME
CHECK_USERNAME=$($PSQL "SELECT * FROM playerinfo WHERE username='$USERNAME'")
if [[ -z $CHECK_USERNAME ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_NEW_USERNAME=$($PSQL "INSERT INTO playerinfo(username) VALUES('$USERNAME')")
else
  echo $CHECK_USERNAME | while IFS="|" read USERNAME GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

COUNT=0

TARGET=$((RANDOM % 1000 + 1))
while true
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    read GUESS
  fi
  if [[ $GUESS -lt $TARGET ]]
  then
    echo -e "\nIt's higher than that, guess again:"
    ((COUNT+=1))
    read GUESS
  fi
  if [[ $GUESS -gt $TARGET ]]
  then
    echo -e "\nIt's lower than that, guess again:"
    ((COUNT+=1))
    read GUESS
  fi
  if [[ $GUESS == $TARGET ]]
  then  
    ((COUNT+=1))
    GET_GAMES_PLAYED=$($PSQL "SELECT games_played FROM playerinfo WHERE username='$USERNAME'")
    ((GET_GAMES_PLAYED+=1))
    INSERT_GAMES_PLAYED=$($PSQL "UPDATE playerinfo SET games_played=$GET_GAMES_PLAYED WHERE username='$USERNAME'")
    GET_COUNT=$($PSQL "SELECT best_game FROM playerinfo WHERE username='$USERNAME'")
    if [[ -z $GET_COUNT ]] || ((COUNT < GET_COUNT))
    then
      INSERT_NEW_COUNT=$($PSQL "UPDATE playerinfo SET best_game=$COUNT WHERE username='$USERNAME'")
    fi
    echo -e "\nYou guessed it in $COUNT tries. The secret number was $TARGET. Nice job!"
    break
  fi
done
  