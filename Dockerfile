FROM ubuntu:bionic

RUN apt-get update && \
	apt-get install -y ruby ruby-dev ruby-gpgme build-essential && \
	rm -rf /var/lib/apt/lists/*
RUN gem install bundler

