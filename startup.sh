#!/bin/bash

# Move data to a test folder
mkdir -p /home/test
mv HelloWorld.cpp /home/test/HelloWorld.cpp
mv correction.zip /home/test/correction.zip

# Compile Hello World
cd /home/test/
g++ HelloWorld.cpp -o HelloWorld
./HelloWorld

# Extract correction file
7z e correction.zip 

# Run bash
bash
