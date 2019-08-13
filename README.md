# docker-ogv-timing
A docker environment with all requirements installed to run the ogv-timing pipeline

# Setup
This requires docker. Go read about installing it here: https://docs.docker.com/install/

1. Clone the ogv-dating pipeline repo to somewhere known on your local machine.
`git clone https://github.com/veg/ogv-dating`

2. Clone this repo to somewhere known on your machine
`git clone https://github.com/HIVDiversity/docker-ogv-timing`

3. Navigate to where you cloned this repo, and build the docker image by running:
`docker build -t ogvDating .`

4. Launch a docker container from the image you just built, and mount the ogv-timing repo you cloned into it:
`docker run --rm -it -v /path/to/your/ogv-dating:/root/ogvDating`

5. Inside the image, nagivate to `/root/ogvDating` and run `snakemake`:
`cd /root/ogvDating && snakemake`
