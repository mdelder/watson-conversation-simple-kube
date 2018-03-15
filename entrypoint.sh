#!/bin/sh

export CONVERSATION_PASSWORD=$(echo "$CONVERSATION_SERVICE_CAR" | jq -r '.password')
export CONVERSATION_USERNAME=$(echo "$CONVERSATION_SERVICE_CAR" | jq -r '.username')
echo "npm start"
/usr/local/bin/npm start