FROM ubuntu:latest
COPY ./vyvod.asm ./home
COPY ./proverka.asm ./home
COPY ./massiv.cpp ./home
RUN apt-get -q update && apt-get -q install -y --no-install-recommends apt-utils
RUN apt-get -q install -y fasm
RUN apt-get -q install -y g++
RUN apt-get -q install -y gcc
WORKDIR ./home/
RUN fasm vyvod.asm
RUN fasm proverka.asm
RUN g++ massiv.cpp vyvod.o proverka.o -o massiv
CMD ["./massiv"]
MAINTAINER Ekaterina Grohotova <katya.grohotova.4@gmail.com>