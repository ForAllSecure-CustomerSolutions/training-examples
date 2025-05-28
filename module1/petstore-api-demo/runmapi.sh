#!/bin/bash

set -ex

HOST=demo-api.mayhem.security/api/v3
PROTOCOL=https

mapi run \
     training/petstore/petstore 30 "$PROTOCOL://$HOST/openapi.json" \
     --header-auth 'api_key: special-key' \
     --url "$PROTOCOL://$HOST/" \
     --interactive \
     "${@}" 
