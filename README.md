# Udacity Project: Tournament Database

## Description

A Python module that uses the PostgreSQL database to pair up players in each round of a tournament
and record their results using the tournament Swiss-System.

## Installation

	* Install VirtualBox.
	* Unzip and `cd` into the Vagrant box "fsnd-virtual-machine.zip" provided with this repository.
	* Inside the /vagrant subdirectory, run the command `vagrant up` followed by `vagrant ssh`.
	* Replace the _tournament_ folder inside /vagrant with this newly updated tournament git repository.
	* Once inside the Vagrant virtual machine, log to PostgreSQL CLI `$ psql`.
	* Run `vagrant=> \i tournament.sql` in the psql CLI to create database and tables.
	* Exit psql CLI `vagrant=> \q` and run `$ python tournament_test.py`.
	* tournament_test.py script output:
		`vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py 
		1. countPlayers() returns 0 after initial deletePlayers() execution.
		2. countPlayers() returns 1 after one player is registered.
		3. countPlayers() returns 2 after two players are registered.
		4. countPlayers() returns zero after registered players are deleted.
		5. Player records successfully deleted.
		6. Newly registered players appear in the standings with no matches.
		7. After a match, players have updated standings.
		8. After match deletion, player standings are properly reset.
		9. Matches are properly deleted.
		10. After one match, players with one win are properly paired.
		Success!  All tests pass!`
 
##Licence

_Open Source Software_
