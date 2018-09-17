FROM python:2.7.15-slim-stretch

MAINTAINER "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>

COPY requirements.txt .

RUN  pip install --no-cache-dir --upgrade pip && \
     pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["robot"]
