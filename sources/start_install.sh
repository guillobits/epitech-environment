#!/bin/bash
function start_install()
{
	echo " ## MISE A JOUR DES SOUCES"
	sudo pacman -Sy
	echo ""

	echo " ## MISE A JOUR DU SYSTEME"
	sudo pacman -Su
	echo ""

	echo " ## INSTALLATION DE TERMINATOR"
	sudo pacman -S terminator
	echo ""

	echo " ## INSTALLATION DE TREE"
	sudo pacman -S tree
	echo ""

	echo " ## INSTALLATION DE GIT"
	sudo pacman -S git
	echo ""

	echo " ## INSTALLATION DE OPENSSL"
	sudo pacman -S openssl
	echo ""

	echo " ## INSTALLATION DE ZSH"
	sudo pacman -S zsh
	echo ""

	echo " ## INSTALLATION DE CURL"
	sudo pacman -S curl
	echo ""

	echo " ## INSTALLATION DE WGET"
	sudo pacman -S wget
	echo ""

	echo " ## INSTALLATION DE OH-MY-ZSH"
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
	echo ""

	echo " ## INSTALLATION DE EMACS"
	sudo pacman -S emacs-nox
	echo ""

	echo " ## INSTALLATION DE LIBNCURSES"
	sudo pacman -S ncurses
	echo ""

	echo " ## INSTALLATION DE VALGRIND"
	sudo pacman -S valgrind
	echo ""

	echo " ## INSTALLATION DE GDB"
	sudo pacman -S gdb
	echo ""

	echo " ## INSTALLATION DE BLIH"
	sudo cp ./assets/blih /usr/bin/
	echo ""

	echo " ## INSTALLATION DE GCC"
	sudo pacman -S gcc
	echo ""

	echo " ## INSTALLATION DE CLANG"
	sudo pacman -S clang
	echo ""

	echo " ## INSTALLATION DE PYTHON"
	sudo pacman -S python
	echo ""

	echo " ## INSTALLATION DE GIT KRAKEN"
	git clone https://aur.archlinux.org/gitkraken.git
	cd gitkraken
	makepkg
	cd -
	rm -Rf gitkraken
	echo ""

	echo " ## INSTALLATION DE FILEZILLA"
	sudo pacman -S filezilla
	echo ""

}
