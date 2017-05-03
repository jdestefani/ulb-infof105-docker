#!/bin/bash

# Update package list
apt-get update

# Install git for version control
apt-get install -y git

# Install gcc and g++ to be able to compile files
apt-get install -y gcc-4.9
apt-get install -y g++

# Install emacs in order to have a command line text-editor
apt-get install -y emacs24

# Install make and other relevant packages
apt-get install -y make

# Install nasm to be able to compile assembly files
apt-get install -y nasm

# Install debugger of choice
apt-get install -y gdb

# Install unarchiver of choice
apt-get install -y p7zip-full

# Install multilib package for 32-64 bit crosscompilation
apt-get install -y gcc-multilib g++-multilib





