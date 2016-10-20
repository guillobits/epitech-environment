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
	sudo pacman -S openssl²
	echo ""

	echo " ## INSTALLATION DE TREE"
	sudo pacman -S tree
	echo ""
}
