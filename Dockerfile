FROM debian:latest
RUN apt-get update && apt-get install -y git && \
     git clone https://github.com/ehrenbrav/DeepQNetwork.git
RUN apt-get install -y sudo
RUN apt-get install -y libgd2-xpm-dev
RUN    cd DeepQNetwork && ./install_dependencies.sh 
