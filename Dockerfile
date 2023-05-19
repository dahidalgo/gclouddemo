# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.11.3-slim


ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN pip install -U Flask

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app