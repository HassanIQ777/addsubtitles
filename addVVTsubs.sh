#!/bin/env bash
# $1 is the file path and $2 is the .vtt subtitles path

FILE="$1"
SUBS="$2"

function printHelp {
    echo "addsubtitles v26.9.3 by HassanIQ777"
    echo "Usage: "
    echo "./addVVTsubs.sh <FILE> <SUBS>"
}

if [ $# -eq 0 ]; then 
    printHelp
    exit 0
fi

if [ $# -eq 1 ]; then 
    echo "No subtitles were provided."
    printHelp
    exit 3
fi

[[ -f "$FILE" ]] || { echo "File not found: $FILE" >&2; printHelp ; exit 1; }

[[ -f "$SUBS" ]] || { echo "Subtitles not found."; printHelp; exit 2; }

ABS_FILE="$(realpath "$FILE")"
DIR_NAME="${ABS_FILE%.*}"
EXT="${ABS_FILE##*.}"

OUTFILE="${DIR_NAME}_subbed.${EXT}"

ffmpeg -i "$FILE" -i "$SUBS" -c copy -c:s mov_text "$OUTFILE"
# echo "$OUTFILE" # for debugging
