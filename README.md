Template structure for the Docker container built for the ULB class INFO-F-105.

# Quickstart
```
git clone https://github.com/jdestefani/ulb-infof105-docker.git
cd ulb-infof105-docker
docker run -it -v "`pwd`/shared_data:/home/test/shared_data" jdestefani/ulb_infof105:v0.1
cd asm_test
make
./Ex62
```

# How to use the docker?
0. Make sure that [git](https://git-scm.com/) and [Docker](https://www.docker.com/) are installed. 
1. Put the file you want to compile in a Linux environment in the folder shared_data.
2. Run the container and test the files

