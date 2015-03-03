#!/bin/bash

dir=~/.doties
olddir=~/.doties/old

doties=".bashrc .vimrc .vim .zshrc .gitconfig .mouserc .xinitrc .zprofile .tmux.conf .zshprofile"

run() {
	backup_old_doties
	symlink_doties
}

backup_old_doties() {
	echo "Backuping old doties to $olddir"
	mkdir -p $olddir

	for dotie in $doties; do
		echo "Moving $dotie"
		mv ~/$dotie $olddir
	done	

	echo "Done!"
}

symlink_doties() {
	echo "Creating symlinks from $dir to ~/"
	mv $dir

	for dotie in $doties; do
		echo "Symlinking $dotie"
		ln -s $dir/$dotie ~/$dotie
	done
	
	echo "Done!"
}

run
