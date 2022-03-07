# Shell Random Greeter
A simple bash script that will generate a random ASCII art -OR- Quote when ran. Looks like this:

```
Welcome! $USER
Your Current Directory is: $PWD
Time of Terminal Start: (HH:MM:SS)
Your default Shell is: ($SHELL)
____________________________________

ASCII ART/QUOTE

____________________________________

user@host $
```


# Installation
**HEY! IF YOU'RE INSTALLING FROM SCRIPT: MAKE SURE BOTH FILES ARE IN THE SAME DIRECTORY!**

### Shells supported for automatic installer:
FISH, BASH, ZSH, TCSH, and KSH

## Install from Install Script (Tested on Arch Linux):
1. In a terminal, type `$ chmod +x install.sh`
2. In the same terminal, type: `$ ./install` and run through Installation Process.
3. Run `$ shell-random-greeter` or `$ ls /usr/bin | grep shell-random-greeter` to test if the command copied to the right directory

## Manual Install (GNU/Linux)
1. In a terminal type: `$ chmod +x shell-random-greeter`
2. In the same terminal, type `$ sudo cp shell-random-greeter /usr/bin` (If not /usr/bin/, then wherever your CLI commands are held).
3. Run `$ shell-random-greeter` or `$ ls /path/to/dir| grep shell-random-greeter` to test if the command copied to the right directory

--------------------------------------------------------------------------------

# Installing to $SHELL (MANUAL ONLY!)
Installing to any shell:
1. Edit your config file, (looks like `.*rc` or check your shell's documentation for this)
2. Add `shell-random-greeter` in it's own line
3. Source it with `$ source path/to/config` and enjoy!
------------------------------------------
# UPDATING SHELL-RANDOM-GREETER

After making any edits to `shell-random-greeter`, you can either run 
`$ ./install` or `$ sudo cp shell-random-greeter /usr/bin`
and the script should regenerate on the next launch :)

--------------------------------------------------------------------------------
Enjoy the script!


