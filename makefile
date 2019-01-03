README.md:
	echo "# The Unix Workbench Project" > README.md
	echo "\nThe date and time that make run is: $$(date)" >> README.md
	echo "\nThe number of lines of code contained in guessinggame.sh is: $$(cat guessinggame.sh | wc -l)" >> README.md
clean:
	rm README.md
