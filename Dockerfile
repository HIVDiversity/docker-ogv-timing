FROM ubuntu:19.10

RUN apt-get clean
RUN apt-get update

RUN apt-get install -y muscle 
RUN apt-get install -y wget 
RUN apt-get install -y mafft
RUN apt-get install -y git
RUN apt-get install -y fasttree
RUN ln -s /usr/bin/fasttree /usr/local/bin/FastTree
RUN ln -s /usr/bin/muscle /usr/local/bin/muscle

RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN cd ~ && \ 
	git clone https://github.com/veg/hyphy.git && \ 
	cd ~/hyphy && \
	cmake . && \
	make && \
	make install

RUN apt-get upgrade -y python3
RUN apt-get install -y python3-pip

RUN pip3 install snakemake

RUN apt-get install -y flex bison libgmp3-dev

RUN wget https://github.com/amkozlov/raxml-ng/releases/download/0.9.0/raxml-ng_v0.9.0_linux_x86_64.zip -P ~/raxml-ng/.
RUN cd ~/raxml-ng && \
	unzip raxml-ng_v0.9.0_linux_x86_64.zip 
RUN ln -s ~/raxml-ng/raxml-ng /usr/local/bin/raxml-ng


