#!/bin/bash
# Author: Matt Bangert <matt.bangert@gmail.com>
set -e
set -o pipefail
# get the dockerfiles changed
IFS=$'\n'
# shellcheck disable=SC2207
files=( $(git diff --name-only master | cut -d ' ' -f2 | grep 'Dockerfile') )
unset IFS

# build the changed dockerfiles
# shellcheck disable=SC2068
for f in ${files[@]}; do
	if ! [[ -e "$f" ]]; then
		continue
	fi

	(
	set -x
    echo -e "Linting $f"
	docker run --rm -i hadolint/hadolint < "$f"
	)
done
