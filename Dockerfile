FROM python:3.11.4
WORKDIR /app
COPY ./Makefile /app/Makefile
COPY ./requirements.txt /app/requirements.txt
RUN python -m pip install -r requirements.txt
COPY ./demo /app/demo


