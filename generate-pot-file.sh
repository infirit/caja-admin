#!/bin/sh
# This script generates the po/caja-admin.pot file
FILEPATH="$(readlink -f "$0")"
DIR="$(dirname "$FILEPATH")"
cd "$DIR"
xgettext --package-name=caja-admin \
         --package-version=0.0.1 \
         --copyright-holder='Bruno Nova <brunomb.nova@gmail.com>' \
         --msgid-bugs-address='https://github.com/infirit/caja-admin/issues' \
         -cTRANSLATORS \
         -s -o "po/caja-admin.pot" \
         "extension/caja-admin.py"
