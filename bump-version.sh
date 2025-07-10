#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <new_version>"
    exit 1
fi

for tenant_dir in app/overlays/tenant-*; do
  sed -i '' "s/value: *'[0-9.]*'/value: '$1'/g" "$tenant_dir/env.yaml"
done
