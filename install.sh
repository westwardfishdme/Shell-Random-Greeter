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
function config() { #Adds script to shell config
	if [[ "$SHELL" =~ "bash" ]]; then #if using bash
		echo "Installing to ~/.bashrc"
		echo -e "\nshell-random-greeter" >> ~/.bashrc
		source ~/.bashrc
	elif [[ "$SHELL" =~ "zsh" ]]; then #if using zsh
		echo "Installing to ~/.zshrc"
		echo -e "\nshell-random-greeter" >> ~/.zshrc
	elif [[ "$SHELL" =~ "fish" ]]; then #if using fish
		echo "Installing to ~/.config/fish/config.fish"
		echo -e "\nshell-random-greeter" >> ~/.config/fish/config.fish
	elif [[ "$SHELL" =~ "ksh" ]]; then #if using KSH
		echo "Installing to ~/.kshrc"
		echo -e "\nshell-random-greeter" >> ~/.kshrc
	elif [[ "$SHELL" =~ "tsh"]]; then #if using TCSH
		echo "Installing to ~/.tcshrc"
		echo -e "\nshell-random-greeter" >> ~/.tcshrc
	else
		echo "Couldn't detect shell.  Please add to shell config manually."
	fi
} 
making 
if making; then #If making() is successful:
	echo "Success."
	echo "Moving File to /usr/bin"
	moving
	if moving; then #if moving() is successful:
		echo "Success!"
		echo "enter 'shell-random-greeter' into your CLI to make sure it works!"
		config
	else #if moving() is unsuccessful
		echo "ERROR: File was not copied to /usr/bin"
		echo "Exiting install"
	fi
else #if making() is unsuccessful
	echo "ERROR: Script was not found."
	echo "Exiting install..."
fi

