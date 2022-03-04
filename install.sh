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

function detect_tcshrc() { #detect .tcshrc file
        if [[ -f ~/.tcshrc ]]; then
                echo ".tcshrc found!"   
                COUNT=$(grep -c shell-random-greeter ~/.tcshrc) #Check to see if shell-random-greeter is installed...

                if [[ (($COUNT -lt 1)) ]]; then
                        echo -e "appending 'shell-random-greeter' to .tcshrc"
                        echo -e "\nshell-random-greeter" >> ~/.tcshrc
                else
                        echo "Shell Random Greeter is already installed in .tcshrc!"
                fi
        else      
                echo ".tcshrc file not found, making file..."
                touch ~/.tcshrc
                echo "Done."
                echo "appending 'shell-random-greeter' to file..."
                echo -e "\nshell-random-greeter" >> ~/.tcshrc
                echo Done.
        fi
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
		echo -e "\nshell-random-greeter" >> ~/.config/fish/config.fish #IF YOU ARE USING FISH-- YOU MAY FIX THE LOCATION OF THE COMMAND OR INSTALL MANUALLY
	elif [[ "$SHELL" =~ "ksh" ]]; then #if using KSH
		echo "Installing to ~/.kshrc"
		echo -e "\nshell-random-greeter" >> ~/.kshrc
	elif [[ "$SHELL" =~ "tcsh"]]; then #if using TCSH
		detect_tcshrc
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

