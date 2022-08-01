#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "truncate games, teams")"

cat games.csv | while IFS=, read YEAR ROUND WINNER OPPONENT WGOAL LGOAL
do
  if [[ $WINNER != "winner" ]]
  then
	
  WINNER_ID="$($PSQL "select team_id from teams where name='$WINNER'")"
  if [[ -z $WINNER_ID ]]  
  then
  WINNER_RES="$($PSQL "insert into teams(name) values('$WINNER')")"
  if [[ $WINNER_RES == "INSERT 0 1" ]]
  then
    echo Insert team: $WINNER
  fi
  fi

  WINNER_ID="$($PSQL "select team_id from teams where name='$WINNER'")"
  
  LOSER_ID="$($PSQL "select team_id from teams where name='$OPPONENT'")"
  if [[ -z $LOSER_ID ]]  
  then
  LOSER_RES="$($PSQL "insert into teams(name) values('$OPPONENT')")"
  if [[ $LOSER_RES == "INSERT 0 1" ]]
  then
    echo Insert team: $OPPONENT
  fi
  fi

  LOSER_ID="$($PSQL "select team_id from teams where name='$OPPONENT'")"


  LOSER_RES="$($PSQL "insert into games(year, round, winner_id, opponent_id, opponent_goals, winner_goals) values($YEAR,'$ROUND',$WINNER_ID,$LOSER_ID,$LGOAL,$WGOAL)")"

  fi
done 