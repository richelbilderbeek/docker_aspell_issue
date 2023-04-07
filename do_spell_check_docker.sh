#!/bin/bash
#
# Do a spell check
#
# Usage:
#
#   ./scripts/do_spell_check_docker.sh
#
# Solution adapted from https://tex.stackexchange.com/a/19

echo "File without spelling errors, interactive"
sudo docker run starefossen/aspell -c --mode=tex correct.tex --lang=en_GB

echo "File with spelling errors, interactive"
sudo docker run starefossen/aspell -c --mode=tex incorrect.tex --lang=en_GB

echo "File without spelling errors"
cat correct.tex | sudo docker run starefossen/aspell pipe --mode=tex --lang=en_GB

echo "File with spelling errors"
cat incorrect.tex | sudo docker run starefossen/aspell pipe --mode=tex --lang=en_GB
