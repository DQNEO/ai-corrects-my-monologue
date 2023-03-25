#!/bin/bash
# Usage:
#   ./cmd out.mp3
#
# record 600 secs and save it to a file
TIME=600
OUT_FILE=$1
INDEX=0
echo "Start recording your voice. "
echo "Press Ctr-C when you finish talking."
echo ""
ffmpeg -f avfoundation -i ":$INDEX" -t $TIME -y -loglevel quiet $OUT_FILE

