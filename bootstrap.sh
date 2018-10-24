#!/usr/bin/env bash


dir=~/.doties
olddir=~/.doties/old

doties=".bashrc .vimrc .vim .zshrc .gitconfig .mouserc .xinitrc .zprofile .tmux.conf .zshprofile .globalgitignore .vimperatorrc .tigrc .config/i3 .config/rofi"

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
