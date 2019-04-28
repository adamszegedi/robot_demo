FROM python:3.7.3
WORKDIR /app
COPY ./Makefile /app/Makefile
COPY ./Pipfile* /app/
RUN python -m pip install pipenv
RUN make install
COPY ./demo /app/demo
COPY ./.env /app/.env
CMD make run-all