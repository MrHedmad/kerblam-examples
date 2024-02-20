FROM ubuntu:latest

RUN apt-get update && apt-get install tree 

WORKDIR /app

COPY . .
