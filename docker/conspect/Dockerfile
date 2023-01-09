FROM python:3.10.4-slim-buster

RUN apt-get update && apt-get install --no-install-recommends -y \
    make \
    nano \
    wget

ARG ENVIRONMENT

ENV ENVIRONMENT=${ENVIRONMENT} \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    POETRY_VERSION=1.2.0

RUN pip install --no-cache-dir --upgrade pip setuptools==49.2.1 && pip install "poetry==$POETRY_VERSION"

WORKDIR /conspect
COPY ./poetry.lock pyproject.toml /conspect/

RUN poetry config virtualenvs.create false \
&& poetry install $(test "$ENVIRONMENT" == production && echo "--no-dev") --no-interaction --no-ansi

COPY conspect /conspect