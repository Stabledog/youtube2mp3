#!/bin/bash - 
#===============================================================================
#
#          FILE: setup-prereqs.sh
# 
#         USAGE: ./setup-prereqs.sh 
# 


function errExit {
	echo "ERROR: $@" >&2
	exit 1
}

function debianSetup {
	# For debian-derived environments (Ubuntu, etc.)
	#
	local pkglist="ffmpeg lame zenity youtube-dl"

	sudo apt-get -y install $pkglist || errExit "One or more required packages failed install"
}

function redhatSetup {
	# For redhat-oriented environments (Fedora, etc.)
	#
	echo -n ""
}


function getPlatformClass {
	# What sort of platform are we on?
	#
	if which apt-get &>/dev/null; then
		echo "debian"
		return 0
	elif which yum &>/dev/null; then
		echo "redhat"
		return 0
	fi
	errExit "Unknown platform class in getPlatformClass"
}

if [[ -z $sourceMe ]]; then
	class=$(getPlatformClass)

	case $class in
		debian)
			debianSetup
			;;
		redhat)
			redhatSetup
			;;
	esac

fi



