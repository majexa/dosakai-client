FROM phusion/baseimage

RUN mkdir -p /usr/src/dosakai
WORKDIR /usr/src/dosakai

COPY insecure_key /usr/src/dosakai
RUN chmod 600 /usr/src/dosakai/insecure_key

COPY run.sh /usr/src/dosakai
RUN chmod +x /usr/src/dosakai/run.sh

