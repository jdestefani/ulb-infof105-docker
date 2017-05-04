Template structure for the Docker container built for the ULB class INFO-F-105.

# Quickstart
git clone https://github.com/jdestefani/ulb-infof105-docker.git

docker run -it -v shared_data:/home/test/shared_data jdestefani/ulb_infof105:v0.1

cd asm_test

make

./Ex62

# How to use the docker?
1. Put the file you want to compile in a Linux environment in the folder shared_data.
2. Run the container and test the files

