FROM ubuntu:14.04
##Github Not Vaild for this Project Yet
##MAINTAINER Astilex, <Add Github Link Here> 

RUN curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly

#Install dependencies
RUN sudo apt-get update \
    && sudo apt-get install software-properties-common -y \
    && sudo add-apt-repository ppa:fkrull/deadsnakes -y \
    && sudo add-apt-repository ppa:mc3man/trusty-media -y \
    && sudo apt-get update -y \
    && sudo apt-get install build-essential unzip -y \
    && sudo apt-get install ffmpeg -y \
    && sudo apt-get install libopus-dev -y \
    && sudo apt-get install libffi-dev -y

#Install Pip Will be Raplaced by Rusts Native Cargo Tool
#RUN sudo apt-get install wget \
#    && wget https://bootstrap.pypa.io/get-pip.py \
#    && sudo python3.5 get-pip.py

#Add musicBot
ADD . /musicBot
WORKDIR /musicBot

#Install Cargo dependencies
#RUN sudo cargo install <packages>

#Add volume for configuration
VOLUME /musicBot/config

CMD rustc --run run.rs
