# syntax=docker/dockerfile:1

FROM python:3.12-alpine

EXPOSE 5000/tcp

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]