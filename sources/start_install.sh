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
	echo -e "Y\n" | sudo pacman -S terminator
	echo ""

	echo " ## INSTALLATION DE TREE"
	echo -e "Y\n" | sudo pacman -S tree
	echo ""

	echo " ## INSTALLATION DE GIT"
	echo -e "Y\n" | sudo pacman -S git
	echo ""

	echo " ## INSTALLATION DE OPENSSH"
	echo -e "Y\n" | sudo pacman -S openssh
	echo ""

	echo " ## INSTALLATION DE ZSH"
	echo -e "Y\n" | sudo pacman -S zsh
	echo ""

	echo " ## INSTALLATION DE CURL"
	echo -e "Y\n" | sudo pacman -S curl
	echo ""

	echo " ## INSTALLATION DE WGET"
	echo -e "Y\n" | sudo pacman -S wget
	echo ""

	echo " ## INSTALLATION DE EMACS"
	echo -e "Y\n" | sudo pacman -S emacs-nox
	echo ""

	echo " ## INSTALLATION DE LIBNCURSES"
	echo -e "Y\n" | sudo pacman -S ncurses
	echo ""

	echo " ## INSTALLATION DE VALGRIND"
	echo -e "Y\n" | sudo pacman -S valgrind
	echo ""

	echo " ## INSTALLATION DE GDB"
	echo -e "Y\n" | sudo pacman -S gdb
	echo ""

	echo " ## INSTALLATION DE BLIH"
	sudo cp ./assets/blih /usr/bin/
	echo "DONE"
	echo ""

	echo " ## INSTALLATION DE GCC"
	echo -e "Y\n" | sudo pacman -S gcc
	echo ""

	echo " ## INSTALLATION DE CLANG"
	echo -e "Y\n" | sudo pacman -S clang
	echo ""

	echo " ## INSTALLATION DE PYTHON"
	echo -e "Y\n" | sudo pacman -S python
	echo ""

	echo " ## INSTALLATION DE FILEZILLA"
	echo -e "Y\n" | sudo pacman -S filezilla
	echo ""

}
