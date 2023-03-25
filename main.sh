#!/bin/bash

# Record your voice
./record.sh tmp/myvoice.mp3

# Convert speech to text
./whisper.sh tmp/myvoice.mp3 > tmp/myvoice.txt
echo "----- your speech ------"
echo ""
cat tmp/myvoice.txt
echo ""

# Rephrase your text into natural English
./chat.sh < tmp/myvoice.txt > tmp/rephrased.txt
echo "----- ChatGPT's suggestion ------"
echo ""
cat tmp/rephrased.txt
echo ""




