#!/bin/bash

JSON_URL="https://01.tomorrow-school.ai/assets/superhero/all.json"

curl -s "$JSON_URL" | jq -r --argjson id "$HERO_ID" '.[] | select(.id == $id) | .connections.relatives'