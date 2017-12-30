#!/bin/bash

# Run docker image to build the themes.
docker run -e PATTERN=sequelpro -v $PWD/output/:/src/output daylerees/rainglow:latest

# Kill old themes.
rm -rf ../themes/*

# Move themes to the root.
cp -R output/sequelpro/* ../themes/

# Delete temp themes.
rm -rf output