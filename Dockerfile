FROM debian:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install -y git wget unzip zip sudo python vim

RUN git clone --depth 1 https://github.com/dr4y/LL-Smartcard/ /llsc

RUN cd /llsc; ./install_dependencies.sh

RUN cd /llsc; python setup.py install
