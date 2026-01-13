# Repo Link https://github.com/jakesgordon/javascript-racer.git 

# Use an official Ubuntu base image
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y git python3 && \
    apt-get clean

WORKDIR /app

RUN git clone https://github.com/jakesgordon/javascript-racer.git

WORKDIR /app/javascript-racer

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]