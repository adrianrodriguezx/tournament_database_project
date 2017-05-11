-- Table definitions for the tournament project.

-- Create database
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;

-- Connect to tournament database
\c tournament

-- Create Tables
DROP TABLE IF EXISTS player CASCADE;
DROP TABLE IF EXISTS match CASCADE;

-- Players table
CREATE TABLE player(
	player_id serial PRIMARY KEY,
	player_name text
);

-- Matchs table
CREATE TABLE match(
	match_id serial PRIMARY KEY,
	winner INTEGER REFERENCES player(player_id), 
	looser INTEGER REFERENCES player(player_id)
);

-- Crete standings table
CREATE VIEW standings AS
SELECT player.player_id as player_id, player.player_name,
(SELECT count(*) FROM match WHERE match.winner = player.player_id) as won,
(SELECT count(*) FROM match WHERE player.player_id in (winner, looser)) as played
FROM player GROUP BY player.player_id ORDER BY won DESC;