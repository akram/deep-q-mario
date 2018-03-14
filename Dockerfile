FROM debian:jessie
RUN apt-get update && apt-get install -y git && \
     git clone https://github.com/ehrenbrav/DeepQNetwork.git
RUN apt-get install -y sudo
RUN apt-get install -y libgd2-xpm-dev
RUN apt-get install -y libgd-dev
RUN apt-get install -y build-essential gcc g++ cmake curl libreadline-dev git-core \
  libjpeg-dev libpng-dev ncurses-dev imagemagick unzip libqt4-dev liblua5.1-0-dev \
  libgd-dev scons libgtk2.0-dev libsdl-dev


RUN git config --global url.https://github.com/.insteadOf git://github.com/

RUN    cd DeepQNetwork && ./install_dependencies.sh 
