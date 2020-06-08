# Use python image
FROM python:3.7-slim

ENV DOMAIN="example.com"

WORKDIR /app

COPY requirements.txt /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY . /app

CMD python cloudflare-ddns.py -z $DOMAIN

