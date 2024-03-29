#!/usr/bin/env bash

set -e

as_root=''
[ $UID = 0 ] || as_root='sudo'

info() {
	printf "$(tput bold)$(tput setaf 4) -> $1$(tput sgr0)\n"
}

pacman_packages=(
	# arch
	dkms
	linux-headers

	# programming
	ctags
	clang
	make
	cmake
	git
	tig
	gcc
	llvm
	emscripten

	#languages
	go
	delve
	#lua
	perl
	python
	python2
	dmd
  gradle
  java-environment

	# text editors
	emacs # search for spacemacs
	vim
	neovim

	# terminal
	alacritty
	kitty
	rxvt-unicode
	tmux
	zsh

	# window managers / desktop
	xorg
	xorg-xinit
	i3-gaps
	i3status
	sway
	swaylock
	swayidle
	dmenu
	rofi
	nitrogen
	compton

	# virtualization / containerization
	kubectl
	helm
	docker
	docker-machine
	docker-compose
	virtualbox
	virtualbox-guest-iso
	virtualbox-host-modules-arch
	qemu
	qemu-arch-extra
  kubectx
  kubie

	# applications / utils
  gdu
	htop
  nvtop
  btop
	glances
	devtools
	ranger
 	w3m
	mutt
	fzf
	bat
	asciinema
	inetutils
	net-tools
	nmon
	openssh
	pulsemixer
	vlc
	firefox
	the_silver_searcher
	ripgrep
	alsa-utils
	slop
	maim
  tesseract
	exfat-utils
	networkmanager
	aws-cli
	aws-iam-authenticator
	terraform
	dhclient
	tree
	hub
	nmap
	firejail
	reflector
	jq
	yq
	xclip
)

aur_packages=(
  asdf-vm

  # text editors
  vscodium
	nvim-packer-git

	# window managers / utils
	polybar

	# applications / utils
	insomnia-bin
	postman-bin
	ngrok
	google-chrome
	barrier
  fswatch
)

install_using_pacman() {
	packages=("$@")

	to_install=()
	for pack in "${packages[@]}"; do
		pacman -Qq $pack > /dev/null 2>&1 || to_install+=("$pack")
	done

	if [ "${#to_install}" -gt 0 ]; then
		$as_root pacman -Sy "${to_install[@]}"
	else
		info "Done installing all packages from pacman"
	fi
}

install_using_yay() {
	packages=("$@")

	to_install=()
	for pack in "${packages[@]}"; do
		pacman -Qq $pack > /dev/null 2>&1 || to_install+=("$pack")
	done

	if [ "${#to_install}" -gt 0 ]; then
		yay -Sy "${to_install[@]}"
	else
		info "Done installing all packages from aur"
	fi
}

install_using_pacman "${pacman_packages[@]}"
install_using_yay "${aur_packages[@]}"
