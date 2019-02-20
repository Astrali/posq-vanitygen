FROM ubuntu:latest
RUN apt-get update ; apt-get dist-upgrade -yqq ; apt-get install -yqq git htop bmon nano build-essential libssl1.0-dev libpcre3-dev
RUN git clone https://github.com/cryptoandcoffee/vanitygen.git ; cd vanitygen ; make ; cp vanitygen keyconv /usr/bin
ENTRYPOINT ["vanitygen"]

