FROM heroku/heroku:20

COPY . /app
WORKDIR /app

# Setup buildpack
RUN mkdir -p /tmp/buildpack /tmp/build_cache /tmp/env
RUN cd /tmp/buildpack; git clone https://github.com/zunda/heroku-buildpack-sh.git

# Execute buildpack
RUN /tmp/buildpack/heroku-buildpack-sh/bin/compile /app /tmp/build_cache /tmp/env

# Prepare environment
ENV HOME /app
WORKDIR /app
RUN useradd -m heroku
USER heroku
