#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL " SELECT SUM(winner_goals)+SUM(opponent_goals) as sum FROM games ")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo  "$($PSQL " select avg(winner_goals) from games ")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo  "$($PSQL " select round(avg(winner_goals), 2) from games ")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL " select avg(winner_goals+opponent_goals) from games ")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL " select case when max(winner_goals) > max(opponent_goals) then max(winner_goals) else max(opponent_goals) end as maxgoal from games ")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo  "$($PSQL " select count(game_id) from games where winner_goals > 2 ")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL " select name from teams where team_id = (select winner_id from games where round='Final' and year=2018) ")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL " select name from teams where team_id in (select winner_id from games where round='Eighth-Final' and year=2014) or team_id in (select opponent_id from games where round='Eighth-Final' and year=2014) order by name")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL " select distinct name from teams where team_id in (select winner_id from games ) order by name")"

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL " select year, name from teams join games on teams.team_id = games.winner_id where round='Final' order by year")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL " select name from teams where name like 'Co%'")"
