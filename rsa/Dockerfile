FROM ruby:2.7-alpine

WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN gem install bundler:1.17.2
RUN bundle install --path vendor/bundle
COPY . .
ENTRYPOINT [ "bash" ]