FROM python:3.8

RUN apt-get update && apt-get install -y gettext curl

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt --no-cache-dir

COPY . /code
