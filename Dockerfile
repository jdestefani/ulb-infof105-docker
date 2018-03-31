# Use Debian Sid Image
FROM debian:jessie

MAINTAINER Jacopo De Stefani <jdestefa@ulb.ac.be> 

# Update package list
RUN apt-get update

# Install git for version control
RUN apt-get install -y git

# Install gcc,g++, nasm to be able to compile files + make and debugger of choice
RUN apt-get install -y gcc g++ gcc-multilib g++-multilib \ 
	&& apt-get install -y nasm \ 
	&& apt-get install -y make \ 
	&& apt-get install -y gdb 

# Install emacs in order to have a command line text-editor
RUN apt-get install -y emacs-nox

# Install unarchiver of choice
RUN apt-get install -y p7zip-full

# Add install script to container tmp folder
ADD startup.sh /usr/bin/startup.sh
RUN chmod +x /usr/bin/startup.sh

# Add Hello World code to test compiler
ADD HelloWorld.cpp /HelloWorld.cpp
ADD shared_data/asm_test.zip /asm_test.zip

# Execute startup script
CMD startup.sh
