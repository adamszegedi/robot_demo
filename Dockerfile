FROM python:3.11.4
WORKDIR /app
COPY ./Makefile /app/Makefile
RUN python -m pip install requirements.txt
COPY ./demo /app/demo
RUN python run.py
