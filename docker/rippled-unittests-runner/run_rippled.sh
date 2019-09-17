#!/bin/bash

echo "Running rippled unit-tests ${UNITTESTS} on $(pwd) "

./rippled -u ${UNITTESTS}
