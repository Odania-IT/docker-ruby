FROM ubuntu:focal

RUN apt-get update && \
	apt-get install -y ruby ruby-dev ruby-gpgme build-essential && \
	rm -rf /var/lib/apt/lists/*
RUN gem install bundler
RUN mkdir -p /home/app
ENV HOME /home/app
WORKDIR /home/app

