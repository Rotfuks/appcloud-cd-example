#!/bin/bash
cf api "$CF_API"
cf auth "$CF_USER" "$CF_PASSWORD"

if [ -n "$CF_ORG" ] && [ -n "$CF_SPACE" ]; then
  cf target -o "$CF_ORG" -s "$CF_SPACE"
fi

sh -c "cf7 $*"

