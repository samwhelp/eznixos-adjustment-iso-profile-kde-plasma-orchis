#!/usr/bin/env bash

set -e


################################################################################
### Head: layan
##

layan_config_install () {

	echo
	echo "##"
	echo "## Config: layan"
	echo "##"
	echo


	layan_config_install_by_dir

	#layan_config_install_by_each_file


	echo

}

layan_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"



}

layan_config_install_by_each_file () {

	return 0

	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"

	echo
	echo "mkdir -p ${HOME}/.local/share/layan"
	mkdir -p "${HOME}/.local/share/layan"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.local/share/layan/Main.colorscheme ${HOME}/.local/share/layan/Main.colorscheme"
	install -Dm644 "./asset/overlay/etc/skel/.local/share/layan/Main.colorscheme" "${HOME}/.local/share/layan/Main.colorscheme"


}

##
### Tail: layan
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	layan_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
