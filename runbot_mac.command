#!/bin/bash
# Will change to Rustc Dirs
#Not Assigned: Mac OS X User Needed!!!

cd "$(dirname "$BASH_SOURCE")" || {
	echo "Python 3.5 doesn't seem to be installed" >&2
exit 1
}

rustc --run run.rs
