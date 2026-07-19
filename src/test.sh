#!/bin/bash

# src/test.sh
EXPECTED="Hello, Test!"
OUTPUT=$(node -e "console.log(require('../src/app.js')('Test'))")

if [ "$OUTPUT" != "$EXPECTED" ]; then
	echo "Test failed, expected $EXPECTED but got $OUTPUT"
	exit 1
else
	echo "Test passed"
	exit 0
fi
