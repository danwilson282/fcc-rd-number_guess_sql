#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
#game logic
PLAY_GAME() {
  #echo $RAND_NO
  echo -e $1
  read USER_NUM
  #if not a number
  re='^[0-9]+$'
  if [[ ! $USER_NUM =~ $re ]]
  then
    #print message and go again
    PLAY_GAME "\nThat is not an integer, guess again:"
  else
    if [[ $USER_NUM -lt $RAND_NO ]]
    then
      ((i++))
      PLAY_GAME "\nIt's higher than that, guess again:"
      
    elif [[ $USER_NUM -gt $RAND_NO ]]
    then
      ((i++))
      PLAY_GAME "\nIt's lower than that, guess again:"
    else
      ((i++))
      #game won
      INSERT_GAME=$($PSQL "INSERT INTO games (score, user_id) VALUES ($i, $USER_ID)")
      echo -e "\nYou guessed it in $i tries. The secret number was $RAND_NO. Nice job!"
    fi
  fi
}

declare -i i=0
RAND_NO=$(( $RANDOM % 1000 + 1 ))
echo -e "\nEnter your username:"
read USER_IN
USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_IN'")
#if not in database
if [[ -z $USER_ID ]]
then
  #add user and give message
  echo -e "\nWelcome, $USER_IN! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users (name) VALUES ('$USER_IN')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_IN'")
  PLAY_GAME "\nGuess the secret number between 1 and 1000:"
else
  #best score
  BEST_SCORE=$($PSQL "SELECT MIN(score) FROM games WHERE user_id=$USER_ID")
  #if no best score
  if [[ -z $BEST_SCORE ]]
  then
    PLAY_GAME "\nGuess the secret number between 1 and 1000:"
  else
    #count games
    NUM_GAMES=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id=$USER_ID")
    echo -e "\nWelcome back, $USER_IN! You have played $NUM_GAMES games, and your best game took $BEST_SCORE guesses."
    PLAY_GAME "\nGuess the secret number between 1 and 1000:"
  fi
  
fi
