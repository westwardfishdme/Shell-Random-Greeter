# Shell Random Greeter
A simple bash script that will generate a random ASCII art -OR- Quote when ran. Looks like this:

`
Welcome! $USER
Your Current Directory is: $PWD
Time of Terminal Start: (HH:MM:SS)
Your default Shell is: ($SHELL)
____________________________________

ASCII ART/QUOTE

____________________________________

user@host $
`


# Installation
**HEY! IF YOU'RE INSTALLING FROM SCRIPT: MAKE SURE BOTH FILES ARE IN THE SAME DIRECTORY!**

## Install from Install Script (Tested on Arch Systems):
1. In a terminal, type `$ chmod +x install.sh`
2. In the same terminal, type: `$ ./install` and run through Installation Process.
3. Run `$ shell-random-greeter` or `$ ls /usr/bin | grep shell-random-greeter` to test if the command copied to the right directory

## Manual Install (GNU/Linux)
1. In a terminal type: `$ chmod +x shell-random-greeter`
2. In the same terminal, type `$ sudo cp shell-random-greeter /usr/bin` (If not /usr/bin/, then wherever your CLI commands are held).
3. Run `$ shell-random-greeter` or `$ ls /path/to/dir| grep shell-random-greeter` to test if the command copied to the right directory

--------------------------------------------------------------------------------

# Installing to $SHELL (MANUAL ONLY!)

Installing to BASH (**B**orn **A**gain **SH**ell)

1. Edit your `.bashrc` file with your favorite text editor
2. At the bottom of the file (or wherever you want so long as it doesn't interfere with the other functions) type: `shell-random-greeter` then write and exit the file.
3. type ` $ source ~/.bashrc` and voila! Installation is complete
4. 
-----------------------------------------

Installing to ZSH (**Z SH**ell)

1. Edit `.zshrc` with your favorite text editor
2. At the bottom of the file (or wherever you want so long as it doesn't interfere with the other functions) type: `shell-random-greeter` then write and exit the file.
3. type ` $ source ~/.zshrc` and voila! Installation is complete

**If you have Powerlevel10k:**
1. Instead of editing `~/.zshrc`, edit `~/.p10k.zsh` 
2. When sourcing, still run the command: `$ source ~/.zshrc`

-------------------------------------------------------------------------------------------
Enjoy the script!


