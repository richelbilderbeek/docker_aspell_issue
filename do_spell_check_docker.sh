#!/bin/bash
#
# Do a spell check
#
# Usage:
#
#   ./scripts/do_spell_check_docker.sh
#
# Solution adapted from https://tex.stackexchange.com/a/19

# echo "File without spelling errors, interactive"
# sudo docker run -i --volume $PWD/correct.tex:/correct.tex starefossen/aspell -c --mode=tex correct.tex --lang=en_GB
#
# Fails with error:
#
#   Error: Stdin not a terminal.

# echo "File with spelling errors, interactive"
# sudo docker run -i --volume $PWD/incorrect.tex:/incorrect.tex starefossen/aspell -c --mode=tex incorrect.tex --lang=en_GB
#
# Fails with error:
#
#  Error: Stdin not a terminal.

echo "File without spelling errors"
cat correct.tex | sudo docker run -i starefossen/aspell --pipe --mode=tex --lang=en_GB

echo "File with spelling errors"
cat incorrect.tex | sudo docker run -i starefossen/aspell --pipe --mode=tex --lang=en_GB
