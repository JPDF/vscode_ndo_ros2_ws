#!/bin/bash
set -e

./setup.sh
ament_${LINTER} src/
if [[ $? == 1 ]]; then
    exit 0
fi
