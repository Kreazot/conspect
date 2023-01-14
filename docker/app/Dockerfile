FROM python:3.10.9-slim-buster

RUN apt-get update && apt-get install --no-install-recommends -y \
    make \
    nano \
    wget

ARG ENVIRONMENT

ENV ENVIRONMENT=${ENVIRONMENT} \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN pip install --no-cache-dir --upgrade pip setuptools==65.7.0 && pip install pip install pipenv==2022.12.19

WORKDIR /app
COPY project/Pipfile* /

RUN pipenv install --dev --deploy --system --ignore-pipfile

COPY project /app