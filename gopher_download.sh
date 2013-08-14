#!/usr/bin/env bash

# Copyright (C) 2013 @d3f <http://identi.ca/d3f> <https://twitter.com/_d3f> - erbatim copying and redistribution of this entire file are permitted provided this notice is preserved.

# Simple gopher download script - uses curl, because fuck wget
# Usage: ./gopher_download.sh _filetype_ _server_ _path_to_file_
# Example: ./gopher_download.sh mp3 gopher://gopher.rp.spb.su/1/ ankylym/audio/Instruments

echo "Grepping all $1 from $2 at root $3"
echo "URL: $2$3"
echo ""

OLD_IFS=$IFS
IFS=$'\n'

for line in  $(curl --silent $2$3 | grep -Po "/(\w+/)*.*$1"); do
        echo "Downdloading:"
        echo "> $2$line"
        echo "as"
        echo "> $(echo ${line##*/})"
        curl $2$line >> $(echo ${line##*/})
        echo ""
done
IFS=$OLD_IFS
