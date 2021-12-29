#!/usr/bin/env bash
set -euo pipefail
shopt -s inherit_errexit
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


if [[ "$#" != 1 ]]; then
	echo "Usage: $0 VARIANT_NAME"
	exit 2
fi

name="$1"
var_dir="$DIR/variants/$name"

mkdir -p "$var_dir"

cp "$DIR"/{resume.tex,coverletter.tex,setup.tex,Makefile} "$var_dir"

echo "Created variant '$name'"
