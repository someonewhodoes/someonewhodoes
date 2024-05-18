
# Makefile to generate README.md

README.md: guessinggame.sh
  echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Project Information" >> README.md
	echo "This project is a simple guessing game written in Bash." >> README.md
	echo "" >> README.md
	echo "## Make Run Information" >> README.md
	echo "Date and Time of Make Run: $$(date)" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
