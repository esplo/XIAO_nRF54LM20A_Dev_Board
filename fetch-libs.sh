#!/bin/sh
set -eu
cd "$(dirname "$0")"
B=https://files.seeedstudio.com/wiki/XIAO-KiCad-Library
mkdir -p lib
cd lib
wget -N "$B/New_XIAO_Series_Footprints.zip" "$B/XIAO_Series_SCH_Symbols.zip"
unzip -o -q New_XIAO_Series_Footprints.zip
unzip -o -q XIAO_Series_SCH_Symbols.zip
