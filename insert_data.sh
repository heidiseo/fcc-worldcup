#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
do
  if [[ $YEAR != 'year' ]]
  then
    # get team_id for winner
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    # if not, insert

    if [[ -z $WINNER_ID ]]
    then
      WINNER_INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
    fi
    # echo if successful

    if [[ $WINNER_INSERT_RESULT == 'INSERT 0 1' ]]
    then
      echo "$WINNER has been added to the team"
    fi

    # get team_id for opponent
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    # if not, insert
    if [[ -z $OPPONENT_ID ]]
    then
      OPPONENT_INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
    fi
    # echo if successful

    if [[ $OPPONENT_INSERT_RESULT == 'INSERT 0 1' ]]
    then
      echo "$OPPONENT has been added to the team"
    fi

    # get newer ids
    NEW_WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    NEW_OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $NEW_WINNER_ID, $NEW_OPPONENT_ID, $WINNERGOALS, $OPPONENTGOALS);")
  fi
done