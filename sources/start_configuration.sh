#!/bin/bash
function start_configuration
{
	echo " ## INSTALLATION DE LA CONFIGURATION EMACS"
	cp -R ./assets/.emacs ~/.emacs
	mkdir -p ~/.emacs.d
	mkdir -p ~/.emacs.d/epitech/
	cp -R ./assets/.emacs.d/epitech/std_comment.el ~/.emacs.d/epitech/std_comment.el
	echo "Done"
	echo ""

	echo " ## GENERATION DES ALIAS DANS LA CONFIGURATION DE ZSH"
	echo -e "alias ne=\"emacs\"" >> ~/.zshrc
	echo "Done"
	echo ""

	echo " ## GENERATION D'UNE CLEF SSH"
	ssh-keygen
	echo "Done"
	echo ""

	echo " ## UPLOAD DE LA CLEF SSH"
	echo "Entrez votre login EPITECH"
	read LOGIN
	blih -u $LOGIN sshkey upload
	echo "Done"
	echo ""

	echo " ## CONFIGURATION D'UN DOSSIER D'EXECUTION PERSONNALISE POUR $USER"
	mkdir -p ~/bin/
	echo "export PATH=\$HOME/bin:/usr/local/bin:/home/$USER/bin/:\$PATH" >> ~/.zshrc
	echo "Done"
	echo ""

	echo " ## INSTALLATION D'UN MRCLEAN"
	cp ./assets/mrclean ~/bin/
	chmod +x ~/bin/mrclean
	echo "Done"
	echo ""
}
