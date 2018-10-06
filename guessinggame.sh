#!/usr/bin/bash
#
# guess.bash - guessing game in BASH (Bourne Again Shell)
#
# This is written to demonstrate this language versus the same program 
# written in other languages.
#
# 06-Oct-2018	Sushma Srimathtirumala	Created this.

scorefile="Guessing Game"
guess=-1
typeset -i num=0

echo -e "Guess the number of files in the directory\n"

### Number of files in the current directory
#(( answer = $(find . -maxdepth 1 -type f -printf . | wc -c) ))
(( answer = $(find . -maxdepth 1 -type f | wc -l) ))

### Play game
while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher..."
	elif (( guess > answer )); then
		echo "Lower..."
	fi
done
echo -e "Congratulations! That took $num guesses.\n"
