#!/bin/bash
#Replace Code with Rustc Eqivilent
#python3.5 -V > /dev/null 2>&1 || {
	echo >&2 "Rustc doesn't seem to be installed.  Do you have a weird installation?"
	echo >&2 "If you have Rustc, use it to run run.rs instead of this script."
	exit 1; }

rustc --run run.rs