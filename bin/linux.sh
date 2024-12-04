#!/bin/bash

if [ "$(uname)" != "Linux" ]; then
	echo "The OS is not linux" > linuxsetup.log
fi #If the OS being used isn't linux then run the exit command

if [ ! -d~/.TRASH ]; then
	mkdir ~/.TRASH
fi #If .TRASH directory doesn't exist inside home directory then create it

if [ -f~/.nanorc ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "The current .nanorc file was changed to .bup_nanorc" >> linuxsetup.log
fi #If .nanorc file exists inside the home directory change its name to .bup_nanorc

mv ~/.dotfiles/etc/nanorc ~/.nanorc #Moves the new .nanorc to the home directory
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #Adds source information to end of the .bashrc file
