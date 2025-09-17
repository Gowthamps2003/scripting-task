#!/bin/bash

URL="https://guvi.in"

status_code=$(curl -L -o /dev/null -s -w "%{http_code}" "$URL")

echo "HTTP Status Code: $status_code"

if [ "$status_code" -ge 200 ] && [ "$status_code" -lt 300 ]; then
    echo "The request was successful."
else
    echo "The request failed."
fi
