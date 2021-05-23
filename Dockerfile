FROM python:3.7

RUN apt update & apt -y upgrade

ENV PYTHONUNBUFFERED 1

RUN mkdir /prod/app
WORKDIR /prod/app

COPY . .

RUN pip install -r requirements.txt
RUN chmod +x /prod/app/docker-entrypoint.sh
ENTRYPOINT ["/prod/app/docker-entrypoint.sh"]