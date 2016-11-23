## DOCKERFILE API
from ruby:2.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

ENV APP_HOME /api_volume
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
RUN RAILS_ENV=development
