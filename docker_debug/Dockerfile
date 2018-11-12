# Using Ubuntu 17.10
FROM ubuntu:artful
RUN apt-get update
RUN apt-get install -y g++
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y valgrind
RUN apt-get install -y vim

# Set starting directory to home
RUN mkdir /prog
WORKDIR /prog

CMD ["bash"]
