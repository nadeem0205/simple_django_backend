# syntax=docker/dockerfile:1
FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Directory creation process
RUN mkdir /code
WORKDIR /code
COPY . /code/

# Install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt


