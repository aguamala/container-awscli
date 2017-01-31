#!/bin/bash

#Exit immediately if a pipeline exits  with a non-zero status
set -e

if [ ! -f /root/.aws/credentials ] && [ ! -f /root/.boto ]; then
    if [[ -z "$AWS_ACCESS_KEY_ID" ]] || [ -z "$AWS_SECRET_ACCESS_KEY" ]; then
        echo >&2 'warning: missing AWS_ACCESS_KEY_ID or AWS_SECRET_ACCESS_KEY environment variables'
    fi
fi

exec "$@"
