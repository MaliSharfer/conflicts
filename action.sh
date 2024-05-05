#!/bin/bash

exists=$(find . \
  -type f \
  -exec grep -il '\b(--trusted-host)\b' {} +)
if [ "${exists}" ]; then
  echo "Trusted hosts found in [${exists}], failing..."
  exit 1
else
  echo "No root trusted hosts detected"
fi