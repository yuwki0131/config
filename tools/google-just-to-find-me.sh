#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <search query>"
    exit 1
fi

url_encode() {
    local encoded=""
    local length="${#1}"
    for (( i = 0; i < length; i++ )); do
        local c="${1:i:1}"
        case $c in
            [a-zA-Z0-9.~_-]) encoded+="$c" ;;
            *) printf -v encoded '%s%%%02X' "$encoded" "'$c"
        esac
    done
    echo "$encoded"
}

search_query="$*"
encoded_query=$(url_encode "$search_query")

google-chrome-stable "https://www.google.com/search?q=$encoded_query"
