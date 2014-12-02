FROM python:2

MAINTAINER Martin Janser <martin@duss-janser.ch>

RUN apt-get update && apt-get install -y git vim
RUN pip install git+git://github.com/sephii/taxi@v3.1.0

ENTRYPOINT ["taxi"]
