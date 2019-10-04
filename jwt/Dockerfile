FROM python:3

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

RUN apt-get update && apt-get -y install locales && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
RUN apt-get install -y vim less
RUN pip install --upgrade pip pipenv

RUN mkdir /app

COPY Pipfile /app
COPY Pipfile.lock /app

COPY ./src/ /app

WORKDIR /app

RUN pipenv install --system
CMD ['pipenv', 'shell']