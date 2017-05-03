# Use Debian Sid Image
FROM debian:sid

MAINTAINER Jacopo De Stefani <jdestefa@ulb.ac.be> 

# Update package list
RUN apt-get update

# Install git for version control
RUN apt-get install -y git

# Install gcc and g++ to be able to compile files
RUN apt-get install -y gcc
RUN apt-get install -y g++

# Install emacs in order to have a command line text-editor
RUN apt-get install -y emacs24

# Install make and other relevant packages
RUN apt-get install -y make

# Install nasm to be able to compile assembly files
RUN apt-get install -y nasm

# Install debugger of choice
RUN apt-get install -y gdb

# Install unarchiver of choice
RUN apt-get install -y p7zip-full

# Install multilib package for 32-64 bit crosscompilation
RUN apt-get install -y gcc-multilib g++-multilib

# Add install script to container tmp folder
ADD startup.sh /usr/bin/startup.sh
RUN chmod +x /usr/bin/startup.sh

# Add Hello World code to test compiler
ADD HelloWorld.cpp /HelloWorld.cpp
ADD asm_test.zip /asm_test.zip

# Execute startup script
CMD startup.sh
