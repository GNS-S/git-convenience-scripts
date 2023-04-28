#!/bin/bash
if [ -z "$1" ]; then
	b=$(tput bold)
	ub=$(tput sgr0)

	echo "${b}g${ub}it ${b}a${ub}dd, ${b}c${ub}ommit ${b}n${ub}o-verify ${b}a${ub}ll, ${b}p${ub}ush"
	echo "for rapid experimental development"
	echo "usage: gacnap.sh <git commit message>"
	exit 1
fi

git add -A
git commit -nam "$1"
git push
