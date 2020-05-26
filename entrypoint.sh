#!/bin/bash
set -e

DOMAIN=$1

# Vars
ESC_SEQ="\x1b["
RESET=$ESC_SEQ"39;49;00m"
YELLOW=$ESC_SEQ"33;01m"
GREEN=$ESC_SEQ"32;01m"

# wget and cURL

wget -q https://"$DOMAIN"/sitemap.xml --no-cache -O - | grep -E -o "${DOMAIN}[^<]+" | while read -r line;
do
  time curl -A 'Cache Warmer' -s -L "$line" > /dev/null 2>&1
  echo -en "$GREEN""$line""$RESET\n"
done
echo
echo -en "$YELLOW"Done - Cache is warmed up"$RESET\n"

# If you have multiple languages add another, e.g. http://$DOMAIN/es/sitemap.xml
