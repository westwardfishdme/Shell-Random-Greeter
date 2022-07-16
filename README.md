# Shell Random Greeter
A simple bash script that will generate a random ASCII art -OR- Quote when ran. Looks like this:

```
Welcome! USER@HOST
Your Current Directory is: $PWD
Time of Terminal Start: (HH:MM:SS)
Default Shell: ($SHELL)

About System:
CPU MODEL: 
Memory Available:
Kernel:
____________________________________

ASCII ART/QUOTE

____________________________________

user@host $
```
Acts as a minimalist alternative to NeoFetch/pFetch 

--------------------------------------------------------------------------------

# Dependencies:
`util-linux`

--------------------------------------------------------------------------------

# Installation
### Shells supported for automatic installer:
FISH, BASH, ZSH, TCSH, and KSH

## Install from Install Script (Mac {Not tested} / Linux):
1. In a terminal, type `$ chmod +x install.sh`
2. In the same terminal, type: `$ ./install` and run through Installation Process.
3. Run `$ shell-random-greeter` or `$ ls /usr/bin | grep shell-random-greeter` to test if the command copied to the right directory

## Manual Install (Linux/Unix Systems)
1. In a terminal type: `$ chmod +x shell-random-greeter`
2. In the same terminal, type `$ sudo cp shell-random-greeter /usr/bin` (If not /usr/bin/, then wherever your CLI commands are held).
3. Run `$ shell-random-greeter` or `$ ls /path/to/dir| grep shell-random-greeter` to test if the command copied to the right directory

# Installing to $SHELL (MANUAL ONLY!)
Installing to any shell:
1. Edit your config file, (looks like `.*rc` or check your shell's documentation for this)
2. Add `shell-random-greeter` in it's own line
3. Source it with `$ source path/to/config` and enjoy!

--------------------------------------------------------------------------------

# UPDATING SHELL-RANDOM-GREETER (After Adding in Custom Quotes)
After making any edits to `shell-random-greeter`, you can either run 
1. `$ ./install` 
2. `$ sudo cp shell-random-greeter /usr/bin`
and the script should regenerate on the next launch :)

--------------------------------------------------------------------------------

# Known Working Shells/OS support:
Unix Shells:
- ZSH
- BASH
- KSH
- FISH
- TCSH
--------------------------------------------------------------------------------
Notes:
- WinBash is sort of buggy, but I'll work it out
- Should work just fine on MacOS-- Since MAC's utilize the ZSH shell and is a UNIX-like OS, but I haven't tested it yet.
- Same goes for any other Unix-Like System. If any issues sprout up, pls post in the Bug Reports. :P
--------------------------------------------------------------------------------
Enjoy the script!
--------------------------------------------------------------------------------
