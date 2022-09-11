FROM python:3.8.10-slim-buster

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install --no-install-recommends -y \
    make \
    nano \
    wget

RUN pip install --no-cache-dir --upgrade pip setuptools==49.2.1 && pip install "poetry==$POETRY_VERSION"

WORKDIR /conspect
COPY conspect/poetry.lock pyproject.toml /conspect/

RUN poetry config virtualenvs.create false \
&& poetry install $(test "$ENVIRONMENT" == production && echo "--no-dev") --no-interaction --no-ansi

COPY conspect /conspect