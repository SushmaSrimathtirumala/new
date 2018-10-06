
all : create title

create :
	touch README.txt

title :
	echo -e "Guessing Game \n Number of lines : $$(wc -l guessinggame.sh) \n $$( date '+%Y-%m-%d  %H-%M-%S' )  "  > README.md
clean :
	clear 

