FROM python:3.11.9-slim

ADD . /app
WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

RUN useradd -ms /bin/bash flaskapp

ENV FLASK_APP=go-short-url.py
ENV FLASK_RUN_PORT=8080

EXPOSE 8080

USER flaskapp
CMD ["flask", "run", "--host", "0.0.0.0"]
