FROM ubuntu:latest

RUN apt-get update && apt-get install make

COPY . /app
