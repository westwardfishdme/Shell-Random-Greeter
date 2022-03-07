#!/bin/bash
echo "Starting Install..."
echo "Making Script an executable..."


#Main Functions

function making() { #Makes the script executable
	
	$(chmod +x $PWD/shell-random-greeter)
}

function moving() { #Moves the script into /usr/bin
	$(sudo cp $PWD/shell-random-greeter /usr/bin)
}
#########################################################

#Shell Config file checkers

function detect_tcshrc() { #detect .tcshrc file
        if [[ -f ~/.tcshrc ]]; then
                echo ".tcshrc found!"   
                COUNT=$(grep -c shell-random-greeter ~/.tcshrc) #Check to see if shell-random-greeter is installed...

                if [[ (($COUNT -lt 1)) ]]; then
                        echo  "appending 'shell-random-greeter' to .tcshrc"
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
                echo "Done."
        fi
}

function detect_zshrc() { #detect .zshrc file
        if [[ -f ~/.zshrc ]]; then
                echo ".zshrc found!"   
		if [[ -f ~/.p10k.zsh ]]; then #Detects if user has Power Level 10K
			echo ".p10k.zsh detected!"
			COUNT=$(grep -c shell-random-greeter ~/.p10k.zsh)
			if [[ (($COUNT -lt 1))  ]]; then 
				echo "appending 'shell-random-greeter' to .p10k.zsh"
				echo -e "\nshell-random-greeter" >> ~/.p10k.zsh
			else 
				echo "Shell Random Greeter is already installed in .p10k.zsh!"
			fi
		else
			COUNT=$(grep -c shell-random-greeter ~/.zshrc) #Check to see if shell-random-greeter is installed...

			if [[ (($COUNT -lt 1)) ]]; then
				echo "appending 'shell-random-greeter' to .zshrc"
				echo -e "\nshell-random-greeter" >> ~/.zshrc
			else
				echo "Shell Random Greeter is already installed in .zshrc!"
			fi
		fi

	else      
		echo ".zshrc file not found, making file..."
		touch ~/.zshrc
		echo "Done."
		echo "appending 'shell-random-greeter' to file..."
		echo -e "\nshell-random-greeter" >> ~/.zshrc
		echo "Done."
	fi
}

function detect_bashrc() { #detect .bashrc file
        if [[ -f ~/.bashrc ]]; then
                echo ".bashrc found!"   
                COUNT=$(grep -c shell-random-greeter ~/.bashrc) #Check to see if shell-random-greeter is installed...

                if [[ (($COUNT -lt 1)) ]]; then
                        echo "appending 'shell-random-greeter' to .bashrc"
                        echo -e "\nshell-random-greeter" >> ~/.bashrc
                else
                        echo "Shell Random Greeter is already installed in .bashrc!"
                fi
        else      
                echo ".bashrc file not found, making file..."
                touch ~/.bashrc
                echo "Done."
                echo "appending 'shell-random-greeter' to file..."
                echo -e "\nshell-random-greeter" >> ~/.bashrc
                echo "Done."
        fi
}
function detect_kshrc() { #detect .kshrc file
        if [[ -f ~/.kshrc ]]; then
                echo ".kshrc found!"   
                COUNT=$(grep -c shell-random-greeter ~/.kshrc) #Check to see if shell-random-greeter is installed...

                if [[ (($COUNT -lt 1)) ]]; then
                        echo "appending 'shell-random-greeter' to .kshrc"
                        echo -e "\nshell-random-greeter" >> ~/.kshrc
                else
                        echo "Shell Random Greeter is already installed in .kshrc!"
                fi
        else      
                echo ".kshrc file not found, making file..."
                touch ~/.kshrc
                echo "Done."
                echo "appending 'shell-random-greeter' to file..."
                echo -e "\nshell-random-greeter" >> ~/.kshrc
                echo "Done."
        fi
}
function detect_fish-config() { #detect .fish file
        if [[ -f ~/.config/fish/config.fish ]]; then
                echo ".~/.config/fish/config.fish found!"   
                COUNT=$(grep -c shell-random-greeter ~/.config/fish/config.fish) #Check to see if shell-random-greeter is installed...

                if [[ (($COUNT -lt 1)) ]]; then
                        echo "appending 'shell-random-greeter' to ~/.config/fish/config.fish"
                        echo -e "\nshell-random-greeter" >> ~/.config/fish/config.fish
                else
                        echo "Shell Random Greeter is already installed in config.fish!"
                fi
        else      
                echo "~/.config/fish/config.fish file not found, making file..."
                touch ~/.config/fish/config.fish
                echo "Done."
                echo "appending 'shell-random-greeter' to file..."
                echo -e "\nshell-random-greeter" >> ~/.config/fish/config.fish
                echo "Done."
        fi
}

function config() { #Adds script to shell config
	if [[ "$SHELL" =~ "bash" ]]; then #if using bash
		echo "installing to ~/.bashrc"
		detect_bashrc
		source ~/.bashrc
	elif [[ "$SHELL" =~ "zsh" ]]; then #if using zsh
		echo "installing to ~/.zshrc"
		detect_zshrc
	elif [[ "$SHELL" =~ "fish" ]]; then #if using fish
		echo "installing to ~/.config/fish/config.fish"
		detect_fish-config	
	elif [[ "$SHELL" =~ "ksh" ]]; then #if using KSH
		echo "Installing to ~/.kshrc"
		detect_kshrc
	elif [[ "$SHELL" =~ "tcsh" ]]; then #if using TCSH
		echo "Installing to ~/.tcshrc"
		detect_tcshrc
	else
		echo "Couldn't detect shell.  Please add to shell config manually."
	fi
}

#INSTALL BEGINS
making 

if making; then #If making() is successful:
	echo "Success."
	echo "Moving File to /usr/bin"
	moving
	if moving; then #if moving() is successful:
		echo "Success!"
		config
	else #if moving() is unsuccessful
		echo "ERROR: File was not copied to /usr/bin"
		echo "Exiting install"
	fi
else #if making() is unsuccessful
	echo "ERROR: Script was not found."
	echo "Exiting install..."
fi

