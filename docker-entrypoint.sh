#!/bin/bash
set -e

if [ -f ${PWD}/$1 ]; then
	exec ${PWD}/$1 "${@:2}"
else
	echo "Subcommand not found"
	echo "Available subcommands: "
	for subcommand in `find $PWD -executable | sort`;
	do
		if [ ${#subcommand} -gt ${#PWD} ];
		then
			prefix=${PWD}/
			replacement=" "
			echo "${subcommand/$prefix/$replacement}"
		fi
	done
fi
