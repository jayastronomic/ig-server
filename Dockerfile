FROM ruby:3-bullseye

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /api
WORKDIR /api

ADD Gemfile /api/Gemfile
ADD Gemfile.lock /api/Gemfile.lock

RUN bundle install 

ADD . /api