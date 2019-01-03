#!/usr/bin/env bash

correct_number=$( ls -l | wc -l )

function guess {
	if [[ $answer -gt $correct_number ]]; then
		echo " you guessed high!"
		getInput
	else
		echo " you guessed low!"
		getInput
	fi
}

function getInput {
	read answer
	while [[ ! $answer =~ ^[0-9]+$ ]]; do
		echo "Please guess a positive number of files..."
		read answer
	done
}

echo "Please guess the number of files in the current directory: " 
getInput
while [[ $answer -ne $correct_number ]]; do
	guess
done
echo "Yay! You guessed right! Congratulations!"
exit 0
