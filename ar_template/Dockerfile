FROM ruby:2.7-alpine

RUN apk update \
  && apk upgrade \
  && apk add --no-cache --update make g++ sqlite-dev

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .

RUN gem install bundler:1.17.2
RUN bundle install

COPY . .

CMD [ "/bin/sh" ]