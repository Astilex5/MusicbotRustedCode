#!/bin/bash
#Path to Rustc, Create Deps via Cargo, Verify it works.
#Not Assigned: Mac OS X User Needed!!!

cd "$(dirname "$BASH_SOURCE")" || {
	echo "Python 3.5 doesn't seem to be installed" >&2
exit 1
}

python3.5 -m pip install --upgrade -r requirements.txt
