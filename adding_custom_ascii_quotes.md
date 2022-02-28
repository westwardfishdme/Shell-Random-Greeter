#Adding Custom Ascii Scripts

Tired of seeing the same pre-installed Quotes and Artworks? Not a problem! I cooked up a way for you to easily add your own ASCII quotes by only adding a boolean operator!

> Note: If you have installed the script already, not an issue, after customizing your `shell-random-greeter` run `$sudo cp shell-random-greeter /usr/bin` and it should updateyour script post-haste!

##Editing shell-random-greeter

1. Open `shell-random-greeter` in your favorite text editor
2. Underneath the most recent `elif` statement (but above the `else` statement) you can add the following lines:
```
elif [[ $RANDINT == 'x'  ]]; then
	echo "Your Quote/Art Here"
```
3. write out the file, and install (if you already installed, read the note)
where 'x' is +1 of the most recent called `elif` statement

If you can automate that process before I find a way to, feel free to upload that code to the repo :)

Happy Quoting!
