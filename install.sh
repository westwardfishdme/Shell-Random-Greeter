#!/bin/bash
echo "Starting Install..."
echo "Making Script an executable..."
function making() { #Makes the script executable
	$(cd $PWD)
	$(chmod +x shell-random-greeter)
}
function moving() { #Moves the script into /usr/bin
	$(sudo cp shell-random-greeter /usr/bin)
} 
making 
if making; then #If making() is successful:
	echo "Success."
	echo "Moving File to /usr/bin"
	moving
	if moving; then #if moving() is successful:
		echo "Success!"
		echo "enter 'shell-random-greeter' into your CLI to make sure it works!"
	else #if moving() is unsuccessful
		echo "ERROR: File was not copied to /usr/bin"
		echo "Exiting install"
	fi
else #if making() is unsuccessful
	echo "ERROR: Script was not found."
	echo "Exiting install..."
fi

