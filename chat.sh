#!/bin/bash
# Usage
# ./cmd < input.txt

TEXT=$(</dev/stdin)
RESPONSE_FILE=.response.txt

MESSAGES="[\
  {\"role\": \"system\", \"content\": \"You are a helpful English teacher who helps ESL (English as a second language) students.\"}, 
  {\"role\": \"user\", \"content\": \"Rewrite the following English text into natural daily English : {$TEXT}\"}
]"

curl --silent https://api.openai.com/v1/chat/completions \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "Content-Type: application/json" \
  -d "{
    \"model\": \"gpt-3.5-turbo\",
    \"messages\": ${MESSAGES}
  }" > $RESPONSE_FILE

jq ".choices[0].message.content"  $RESPONSE_FILE


 
