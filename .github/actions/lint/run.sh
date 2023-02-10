#!/bin/bash

./setup.sh

output=$(ament_${LINTER} src/ 2>&1)
exit_code=$?
echo "$output"
grep -qi "No files found" <<< $output && exit 0 || exit $exit_code
