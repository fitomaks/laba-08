FROM ubuntu
RUN apt update
RUN apt install -yy gcc g++ cmake

WORKDIR /mandp

COPY . .

RUN mkdir build
RUN cd build && cmake .. 
RUN cmake --build build 
