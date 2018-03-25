#!/bin/bash

# Move data to a test folder
mkdir -p /home/test
mv HelloWorld.cpp /home/test/HelloWorld.cpp
mv asm_test.zip /home/test/asm_test.zip

# Compile Hello World
cd /home/test/
g++ HelloWorld.cpp -o HelloWorld
./HelloWorld

# Unpack asm_test
7z e asm_test.zip -oasm_test

# Run bash
bash