#!/bin/bash
function start_configuration
{
	echo " ## INSTALLATION DE LA CONFIGURATION EMACS"
	cp -R ./assets/.emacs ~/.emacs
	cp -R ./assets/.emacs.d ~/.emacs.d/
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
	blih sshkey upload
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
