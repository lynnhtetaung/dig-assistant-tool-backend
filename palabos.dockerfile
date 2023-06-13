FROM ubuntu:jammy
LABEL Description=\Palabos Docker image, based on ubuntu:latest \ maintainer=\orestis.malaspinashesge.ch\ Version=\0.2\
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y g++ clang clang-format-14 ccache cmake python3 make libopenmpi-dev libhdf5-dev libhdf5-mpi-dev doxygen imagemagick && update-alternatives --install /usr/bin/python python /usr/bin/python3 10
ENV TZ=Europe/Zurich
RUN ln -s /usr/bin/clang-format-14 /usr/bin/clang-format