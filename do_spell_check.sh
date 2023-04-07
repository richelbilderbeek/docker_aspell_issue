#!/bin/bash
#
# Do a spell check
#
# Usage:
#
#   ./scripts/do_spell_check.sh
#
# Solution adapted from https://tex.stackexchange.com/a/19

echo "File without spelling errors"
aspell -c --mode=tex correct.tex --lang=en_GB

echo "File with spelling errors"
aspell -c --mode=tex incorrect.tex --lang=en_GB
