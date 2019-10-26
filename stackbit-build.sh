#!/usr/bin/env bash
exit 1
set -e
set -o pipefail
set -v

if [[ -z "${STACKBIT_API_KEY}" ]]; then
    echo "WARNING: No STACKBIT_API_KEY environment variable set, skipping stackbit-pull"
else
    npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://ffd0aca1.ngrok.io/pull/5db420dcc37e4a6abcd82a8b 
fi
jekyll build
