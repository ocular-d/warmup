#!/bin/bash
set -e

DOMAIN=$1

# Vars
ESC_SEQ="\x1b["
RESET=$ESC_SEQ"39;49;00m"
YELLOW=$ESC_SEQ"33;01m"
GREEN=$ESC_SEQ"32;01m"

# wget and cURL

echo -en "$YELLOW"Here we go"$RESET\n"
echo
wget -q https://"$DOMAIN"/sitemap.xml --no-cache -O - | grep -E -o "${DOMAIN}[^<]+" | while read -r line;
do
  echo -en "$GREEN""$line""$RESET\n"
done
echo
echo -en "$YELLOW"Done "$RESET\n"

