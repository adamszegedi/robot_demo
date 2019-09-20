FROM python:3.7.3
WORKDIR /app
RUN python -m pip install poetry
COPY ./Makefile /app/Makefile
COPY ./poetry.lock /app/
COPY ./pyproject.toml /app/
RUN make install
COPY ./demo /app/demo
CMD make run-all
