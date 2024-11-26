FROM docker.io/python:3.13-slim

RUN apt update && pip install --upgrade pip setuptools

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN python -m pip install -r requirements.txt

COPY ./demo ./demo
COPY ./.env ./.env
COPY run.py ./

CMD python3 ./run.py


