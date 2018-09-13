FROM python:2.7.15-slim-stretch

MAINTAINER "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>

RUN apt-get update && apt-get upgrade && \
    apt-get install -y --no-install-recommends build-essential && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN  pip install --no-cache-dir --upgrade pip && \
     pip install --no-cache-dir -r requirements.txt
