#!/bin/bash

FILE=$1
curl --silent https://api.openai.com/v1/audio/transcriptions \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "Content-Type: multipart/form-data" \
  -F language="en" \
  -F response_format="text" \
  -F model="whisper-1" \
  -F file="@$FILE"
