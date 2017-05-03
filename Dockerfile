# Use Debian Sid Image
FROM debian:sid

# Add install script to container tmp folder
ADD install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh

# Execute install script
RUN /tmp/install.sh

# Add install script to container tmp folder
ADD startup.sh /usr/bin/startup.sh
RUN chmod +x /usr/bin/startup.sh

# Add Hello World code to test compiler
ADD HelloWorld.cpp /HelloWorld.cpp
ADD correction.zip /correction.zip

# Execute startup script
CMD startup.sh
